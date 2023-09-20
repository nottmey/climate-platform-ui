import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class AppPagedFetchResult<T> {
  final int? nextPageKey;
  final int? nextPageSize;
  final List<T> newItems;

  AppPagedFetchResult({
    this.nextPageKey,
    this.nextPageSize,
    required this.newItems,
  });
}

class AppPagedSliverList<T> extends ConsumerStatefulWidget {
  final int firstPageKey;
  final int firstPageSize;
  final StreamProvider<T>? creationsProvider;
  final Future<AppPagedFetchResult<T>> Function(int pageKey, int size)
      fetchPage;
  final IndexedWidgetBuilder? separatorBuilder;
  final ItemWidgetBuilder<T> itemBuilder;

  const AppPagedSliverList({
    super.key,
    this.firstPageKey = 0,
    this.firstPageSize = 20,
    this.creationsProvider,
    required this.fetchPage,
    this.separatorBuilder,
    required this.itemBuilder,
  });

  @override
  _AppPagedSliverListState<T> createState() => _AppPagedSliverListState();
}

class _AppPagedSliverListState<T> extends ConsumerState<AppPagedSliverList<T>> {
  late final PagingController<int, T> controller;

  late int currentPageSize;
  Set<T> currentItems = {};
  bool noNextPage = false;

  @override
  void initState() {
    controller = PagingController(firstPageKey: widget.firstPageKey);
    controller.addStatusListener(setCompleted);
    controller.addPageRequestListener(fetchPage);
    currentPageSize = widget.firstPageSize;
    super.initState();
  }

  void setCompleted(PagingStatus status) {
    noNextPage =
        status == PagingStatus.completed || status == PagingStatus.noItemsFound;
  }

  Future<void> fetchPage(int pageKey) async {
    try {
      // TODO use cancel token to cancel request on dispose
      final result = await widget.fetchPage(pageKey, currentPageSize);
      if (mounted) {
        final nextPageSize = result.nextPageSize;
        if (nextPageSize != null) {
          // no rerender needed, so no set state
          // no race conditions, because multiple fetchPage calls are executed sequentially in the same thread
          currentPageSize = nextPageSize;
        }
        final newItems = result.newItems;
        currentItems.addAll(newItems);

        final nextPageKey = result.nextPageKey;
        if (nextPageKey != null) {
          controller.appendPage(newItems, nextPageKey);
        } else {
          controller.appendLastPage(newItems);
        }
      }
    } catch (e) {
      if (mounted) {
        controller.error = e;
      }
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final creationsProvider = widget.creationsProvider;
    if (creationsProvider != null) {
      ref.listen(creationsProvider, (prev, next) {
        if (noNextPage && mounted && next.hasValue) {
          final value = next.value as T;
          if (!currentItems.contains(value)) {
            currentItems.add(value);
            controller.appendLastPage([value]);
          }
        }
      });
    }

    final builderDelegate = PagedChildBuilderDelegate(
      itemBuilder: widget.itemBuilder,
      noItemsFoundIndicatorBuilder: (context) => const SizedBox.shrink(),
    );

    final separatorBuilder = widget.separatorBuilder;
    if (separatorBuilder != null) {
      return PagedSliverList.separated(
        pagingController: controller,
        separatorBuilder: separatorBuilder,
        builderDelegate: builderDelegate,
        shrinkWrapFirstPageIndicators: true,
      );
    } else {
      return PagedSliverList(
        pagingController: controller,
        builderDelegate: builderDelegate,
        shrinkWrapFirstPageIndicators: true,
      );
    }
  }
}
