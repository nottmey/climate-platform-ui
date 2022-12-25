import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class AppPagedFetchResult<T> {
  final int? nextPageKey;
  final List<T> newItems;

  AppPagedFetchResult({
    this.nextPageKey,
    required this.newItems,
  });
}

class AppPagedSliverList<T> extends StatefulWidget {
  final int firstPageKey;
  final Future<AppPagedFetchResult<T>> Function(int pageKey) fetchPage;
  final IndexedWidgetBuilder? separatorBuilder;
  final ItemWidgetBuilder<T> itemBuilder;

  const AppPagedSliverList({
    super.key,
    this.firstPageKey = 0,
    required this.fetchPage,
    this.separatorBuilder,
    required this.itemBuilder,
  });

  @override
  State<AppPagedSliverList<T>> createState() => _AppPagedSliverListState();
}

class _AppPagedSliverListState<T> extends State<AppPagedSliverList<T>> {
  late final PagingController<int, T> controller;

  @override
  void initState() {
    controller = PagingController(firstPageKey: widget.firstPageKey);
    controller.addPageRequestListener(fetchPage);
    super.initState();
  }

  Future<void> fetchPage(int pageKey) async {
    try {
      // TODO use cancel token to cancel request on dispose
      final result = await widget.fetchPage(pageKey);
      if (mounted) {
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
