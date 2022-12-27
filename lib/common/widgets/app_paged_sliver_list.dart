import 'package:flutter/material.dart';
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

class AppPagedSliverList<T> extends StatefulWidget {
  final int firstPageKey;
  final int firstPageSize;
  final Future<AppPagedFetchResult<T>> Function(int pageKey, int size)
      fetchPage;
  final IndexedWidgetBuilder? separatorBuilder;
  final ItemWidgetBuilder<T> itemBuilder;

  const AppPagedSliverList({
    super.key,
    this.firstPageKey = 0,
    this.firstPageSize = 20,
    required this.fetchPage,
    this.separatorBuilder,
    required this.itemBuilder,
  });

  @override
  State<AppPagedSliverList<T>> createState() => _AppPagedSliverListState();
}

class _AppPagedSliverListState<T> extends State<AppPagedSliverList<T>> {
  late final PagingController<int, T> controller;

  late int currentPageSize;

  @override
  void initState() {
    controller = PagingController(firstPageKey: widget.firstPageKey);
    controller.addPageRequestListener(fetchPage);
    currentPageSize = widget.firstPageSize;
    super.initState();
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
        final nextPageKey = result.nextPageKey;
        if (nextPageKey != null) {
          controller.appendPage(result.newItems, nextPageKey);
        } else {
          controller.appendLastPage(result.newItems);
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
    final separatorBuilder = widget.separatorBuilder;
    if (separatorBuilder != null) {
      return PagedSliverList.separated(
        pagingController: controller,
        separatorBuilder: separatorBuilder,
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: widget.itemBuilder,
        ),
      );
    } else {
      return PagedSliverList(
        pagingController: controller,
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: widget.itemBuilder,
        ),
      );
    }
  }
}
