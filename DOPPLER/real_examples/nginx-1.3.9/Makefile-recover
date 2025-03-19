
CC =	clang-13
CFLAGS =  -pipe -S -O -Wall -Wextra -Wpointer-arith -Wno-unused-parameter -g
CPP =	clang-13 -E
LINK =	llvm-link-13


ALL_INCS = -I src/core \
	-I src/event \
	-I src/event/modules \
	-I src/os/unix \
	-I objs \
	-I src/http \
	-I src/http/modules \
	-I src/mail


CORE_DEPS = src/core/nginx.h \
	src/core/ngx_config.h \
	src/core/ngx_core.h \
	src/core/ngx_log.h \
	src/core/ngx_palloc.h \
	src/core/ngx_array.h \
	src/core/ngx_list.h \
	src/core/ngx_hash.h \
	src/core/ngx_buf.h \
	src/core/ngx_queue.h \
	src/core/ngx_string.h \
	src/core/ngx_parse.h \
	src/core/ngx_inet.h \
	src/core/ngx_file.h \
	src/core/ngx_crc.h \
	src/core/ngx_crc32.h \
	src/core/ngx_murmurhash.h \
	src/core/ngx_md5.h \
	src/core/ngx_sha1.h \
	src/core/ngx_rbtree.h \
	src/core/ngx_radix_tree.h \
	src/core/ngx_slab.h \
	src/core/ngx_times.h \
	src/core/ngx_shmtx.h \
	src/core/ngx_connection.h \
	src/core/ngx_cycle.h \
	src/core/ngx_conf_file.h \
	src/core/ngx_resolver.h \
	src/core/ngx_open_file_cache.h \
	src/core/ngx_crypt.h \
	src/event/ngx_event.h \
	src/event/ngx_event_timer.h \
	src/event/ngx_event_posted.h \
	src/event/ngx_event_busy_lock.h \
	src/event/ngx_event_connect.h \
	src/event/ngx_event_pipe.h \
	src/os/unix/ngx_time.h \
	src/os/unix/ngx_errno.h \
	src/os/unix/ngx_alloc.h \
	src/os/unix/ngx_files.h \
	src/os/unix/ngx_channel.h \
	src/os/unix/ngx_shmem.h \
	src/os/unix/ngx_process.h \
	src/os/unix/ngx_setaffinity.h \
	src/os/unix/ngx_setproctitle.h \
	src/os/unix/ngx_atomic.h \
	src/os/unix/ngx_gcc_atomic_x86.h \
	src/os/unix/ngx_thread.h \
	src/os/unix/ngx_socket.h \
	src/os/unix/ngx_os.h \
	src/os/unix/ngx_user.h \
	src/os/unix/ngx_process_cycle.h \
	src/os/unix/ngx_linux_config.h \
	src/os/unix/ngx_linux.h \
	objs/ngx_auto_config.h


CORE_INCS = -I src/core \
	-I src/event \
	-I src/event/modules \
	-I src/os/unix \
	-I objs


HTTP_DEPS = src/http/ngx_http.h \
	src/http/ngx_http_request.h \
	src/http/ngx_http_config.h \
	src/http/ngx_http_core_module.h \
	src/http/ngx_http_cache.h \
	src/http/ngx_http_variables.h \
	src/http/ngx_http_script.h \
	src/http/ngx_http_upstream.h \
	src/http/ngx_http_upstream_round_robin.h \
	src/http/ngx_http_busy_lock.h \
	src/http/modules/ngx_http_ssi_filter_module.h


HTTP_INCS = -I src/http \
	-I src/http/modules


objs/nginx:	objs/src/core/nginx.ll \
	objs/src/core/ngx_log.ll \
	objs/src/core/ngx_palloc.ll \
	objs/src/core/ngx_array.ll \
	objs/src/core/ngx_list.ll \
	objs/src/core/ngx_hash.ll \
	objs/src/core/ngx_buf.ll \
	objs/src/core/ngx_queue.ll \
	objs/src/core/ngx_output_chain.ll \
	objs/src/core/ngx_string.ll \
	objs/src/core/ngx_parse.ll \
	objs/src/core/ngx_inet.ll \
	objs/src/core/ngx_file.ll \
	objs/src/core/ngx_crc32.ll \
	objs/src/core/ngx_murmurhash.ll \
	objs/src/core/ngx_md5.ll \
	objs/src/core/ngx_rbtree.ll \
	objs/src/core/ngx_radix_tree.ll \
	objs/src/core/ngx_slab.ll \
	objs/src/core/ngx_times.ll \
	objs/src/core/ngx_shmtx.ll \
	objs/src/core/ngx_connection.ll \
	objs/src/core/ngx_cycle.ll \
	objs/src/core/ngx_spinlock.ll \
	objs/src/core/ngx_cpuinfo.ll \
	objs/src/core/ngx_conf_file.ll \
	objs/src/core/ngx_resolver.ll \
	objs/src/core/ngx_open_file_cache.ll \
	objs/src/core/ngx_crypt.ll \
	objs/src/event/ngx_event.ll \
	objs/src/event/ngx_event_timer.ll \
	objs/src/event/ngx_event_posted.ll \
	objs/src/event/ngx_event_busy_lock.ll \
	objs/src/event/ngx_event_accept.ll \
	objs/src/event/ngx_event_connect.ll \
	objs/src/event/ngx_event_pipe.ll \
	objs/src/os/unix/ngx_time.ll \
	objs/src/os/unix/ngx_errno.ll \
	objs/src/os/unix/ngx_alloc.ll \
	objs/src/os/unix/ngx_files.ll \
	objs/src/os/unix/ngx_socket.ll \
	objs/src/os/unix/ngx_recv.ll \
	objs/src/os/unix/ngx_readv_chain.ll \
	objs/src/os/unix/ngx_udp_recv.ll \
	objs/src/os/unix/ngx_send.ll \
	objs/src/os/unix/ngx_writev_chain.ll \
	objs/src/os/unix/ngx_channel.ll \
	objs/src/os/unix/ngx_shmem.ll \
	objs/src/os/unix/ngx_process.ll \
	objs/src/os/unix/ngx_daemon.ll \
	objs/src/os/unix/ngx_setaffinity.ll \
	objs/src/os/unix/ngx_setproctitle.ll \
	objs/src/os/unix/ngx_posix_init.ll \
	objs/src/os/unix/ngx_user.ll \
	objs/src/os/unix/ngx_process_cycle.ll \
	objs/src/os/unix/ngx_linux_init.ll \
	objs/src/event/modules/ngx_epoll_module.ll \
	objs/src/os/unix/ngx_linux_sendfile_chain.ll \
	objs/src/http/ngx_http.ll \
	objs/src/http/ngx_http_core_module.ll \
	objs/src/http/ngx_http_special_response.ll \
	objs/src/http/ngx_http_request.ll \
	objs/src/http/ngx_http_parse.ll \
	objs/src/http/ngx_http_header_filter_module.ll \
	objs/src/http/ngx_http_write_filter_module.ll \
	objs/src/http/ngx_http_copy_filter_module.ll \
	objs/src/http/modules/ngx_http_log_module.ll \
	objs/src/http/ngx_http_request_body.ll \
	objs/src/http/ngx_http_variables.ll \
	objs/src/http/ngx_http_script.ll \
	objs/src/http/ngx_http_upstream.ll \
	objs/src/http/ngx_http_upstream_round_robin.ll \
	objs/src/http/ngx_http_parse_time.ll \
	objs/src/http/modules/ngx_http_static_module.ll \
	objs/src/http/modules/ngx_http_index_module.ll \
	objs/src/http/modules/ngx_http_chunked_filter_module.ll \
	objs/src/http/modules/ngx_http_range_filter_module.ll \
	objs/src/http/modules/ngx_http_headers_filter_module.ll \
	objs/src/http/modules/ngx_http_not_modified_filter_module.ll \
	objs/src/http/ngx_http_busy_lock.ll \
	objs/src/http/ngx_http_file_cache.ll \
	objs/src/http/modules/ngx_http_gzip_filter_module.ll \
	objs/src/http/ngx_http_postpone_filter_module.ll \
	objs/src/http/modules/ngx_http_ssi_filter_module.ll \
	objs/src/http/modules/ngx_http_charset_filter_module.ll \
	objs/src/http/modules/ngx_http_userid_filter_module.ll \
	objs/src/http/modules/ngx_http_autoindex_module.ll \
	objs/src/http/modules/ngx_http_auth_basic_module.ll \
	objs/src/http/modules/ngx_http_access_module.ll \
	objs/src/http/modules/ngx_http_limit_conn_module.ll \
	objs/src/http/modules/ngx_http_limit_req_module.ll \
	objs/src/http/modules/ngx_http_geo_module.ll \
	objs/src/http/modules/ngx_http_map_module.ll \
	objs/src/http/modules/ngx_http_split_clients_module.ll \
	objs/src/http/modules/ngx_http_referer_module.ll \
	objs/src/http/modules/ngx_http_proxy_module.ll \
	objs/src/http/modules/ngx_http_fastcgi_module.ll \
	objs/src/http/modules/ngx_http_uwsgi_module.ll \
	objs/src/http/modules/ngx_http_scgi_module.ll \
	objs/src/http/modules/ngx_http_memcached_module.ll \
	objs/src/http/modules/ngx_http_empty_gif_module.ll \
	objs/src/http/modules/ngx_http_browser_module.ll \
	objs/src/http/modules/ngx_http_upstream_ip_hash_module.ll \
	objs/src/http/modules/ngx_http_upstream_least_conn_module.ll \
	objs/src/http/modules/ngx_http_upstream_keepalive_module.ll \
	objs/ngx_modules.ll

	$(LINK) -o objs/nginx.ll -S \
	objs/src/core/nginx.ll \
	objs/src/core/ngx_log.ll \
	objs/src/core/ngx_palloc.ll \
	objs/src/core/ngx_array.ll \
	objs/src/core/ngx_list.ll \
	objs/src/core/ngx_hash.ll \
	objs/src/core/ngx_buf.ll \
	objs/src/core/ngx_queue.ll \
	objs/src/core/ngx_output_chain.ll \
	objs/src/core/ngx_string.ll \
	objs/src/core/ngx_parse.ll \
	objs/src/core/ngx_inet.ll \
	objs/src/core/ngx_file.ll \
	objs/src/core/ngx_crc32.ll \
	objs/src/core/ngx_murmurhash.ll \
	objs/src/core/ngx_md5.ll \
	objs/src/core/ngx_rbtree.ll \
	objs/src/core/ngx_radix_tree.ll \
	objs/src/core/ngx_slab.ll \
	objs/src/core/ngx_times.ll \
	objs/src/core/ngx_shmtx.ll \
	objs/src/core/ngx_connection.ll \
	objs/src/core/ngx_cycle.ll \
	objs/src/core/ngx_spinlock.ll \
	objs/src/core/ngx_cpuinfo.ll \
	objs/src/core/ngx_conf_file.ll \
	objs/src/core/ngx_resolver.ll \
	objs/src/core/ngx_open_file_cache.ll \
	objs/src/core/ngx_crypt.ll \
	objs/src/event/ngx_event.ll \
	objs/src/event/ngx_event_timer.ll \
	objs/src/event/ngx_event_posted.ll \
	objs/src/event/ngx_event_busy_lock.ll \
	objs/src/event/ngx_event_accept.ll \
	objs/src/event/ngx_event_connect.ll \
	objs/src/event/ngx_event_pipe.ll \
	objs/src/os/unix/ngx_time.ll \
	objs/src/os/unix/ngx_errno.ll \
	objs/src/os/unix/ngx_alloc.ll \
	objs/src/os/unix/ngx_files.ll \
	objs/src/os/unix/ngx_socket.ll \
	objs/src/os/unix/ngx_recv.ll \
	objs/src/os/unix/ngx_readv_chain.ll \
	objs/src/os/unix/ngx_udp_recv.ll \
	objs/src/os/unix/ngx_send.ll \
	objs/src/os/unix/ngx_writev_chain.ll \
	objs/src/os/unix/ngx_channel.ll \
	objs/src/os/unix/ngx_shmem.ll \
	objs/src/os/unix/ngx_process.ll \
	objs/src/os/unix/ngx_daemon.ll \
	objs/src/os/unix/ngx_setaffinity.ll \
	objs/src/os/unix/ngx_setproctitle.ll \
	objs/src/os/unix/ngx_posix_init.ll \
	objs/src/os/unix/ngx_user.ll \
	objs/src/os/unix/ngx_process_cycle.ll \
	objs/src/os/unix/ngx_linux_init.ll \
	objs/src/event/modules/ngx_epoll_module.ll \
	objs/src/os/unix/ngx_linux_sendfile_chain.ll \
	objs/src/http/ngx_http.ll \
	objs/src/http/ngx_http_core_module.ll \
	objs/src/http/ngx_http_special_response.ll \
	objs/src/http/ngx_http_request.ll \
	objs/src/http/ngx_http_parse.ll \
	objs/src/http/ngx_http_header_filter_module.ll \
	objs/src/http/ngx_http_write_filter_module.ll \
	objs/src/http/ngx_http_copy_filter_module.ll \
	objs/src/http/modules/ngx_http_log_module.ll \
	objs/src/http/ngx_http_request_body.ll \
	objs/src/http/ngx_http_variables.ll \
	objs/src/http/ngx_http_script.ll \
	objs/src/http/ngx_http_upstream.ll \
	objs/src/http/ngx_http_upstream_round_robin.ll \
	objs/src/http/ngx_http_parse_time.ll \
	objs/src/http/modules/ngx_http_static_module.ll \
	objs/src/http/modules/ngx_http_index_module.ll \
	objs/src/http/modules/ngx_http_chunked_filter_module.ll \
	objs/src/http/modules/ngx_http_range_filter_module.ll \
	objs/src/http/modules/ngx_http_headers_filter_module.ll \
	objs/src/http/modules/ngx_http_not_modified_filter_module.ll \
	objs/src/http/ngx_http_busy_lock.ll \
	objs/src/http/ngx_http_file_cache.ll \
	objs/src/http/modules/ngx_http_gzip_filter_module.ll \
	objs/src/http/ngx_http_postpone_filter_module.ll \
	objs/src/http/modules/ngx_http_ssi_filter_module.ll \
	objs/src/http/modules/ngx_http_charset_filter_module.ll \
	objs/src/http/modules/ngx_http_userid_filter_module.ll \
	objs/src/http/modules/ngx_http_autoindex_module.ll \
	objs/src/http/modules/ngx_http_auth_basic_module.ll \
	objs/src/http/modules/ngx_http_access_module.ll \
	objs/src/http/modules/ngx_http_limit_conn_module.ll \
	objs/src/http/modules/ngx_http_limit_req_module.ll \
	objs/src/http/modules/ngx_http_geo_module.ll \
	objs/src/http/modules/ngx_http_map_module.ll \
	objs/src/http/modules/ngx_http_split_clients_module.ll \
	objs/src/http/modules/ngx_http_referer_module.ll \
	objs/src/http/modules/ngx_http_proxy_module.ll \
	objs/src/http/modules/ngx_http_fastcgi_module.ll \
	objs/src/http/modules/ngx_http_uwsgi_module.ll \
	objs/src/http/modules/ngx_http_scgi_module.ll \
	objs/src/http/modules/ngx_http_memcached_module.ll \
	objs/src/http/modules/ngx_http_empty_gif_module.ll \
	objs/src/http/modules/ngx_http_browser_module.ll \
	objs/src/http/modules/ngx_http_upstream_ip_hash_module.ll \
	objs/src/http/modules/ngx_http_upstream_least_conn_module.ll \
	objs/src/http/modules/ngx_http_upstream_keepalive_module.ll \
	objs/ngx_modules.ll \
	# -lcrypt -lcrypto -lcrypto -lz
	


objs/ngx_modules.ll:	$(CORE_DEPS) \
	objs/ngx_modules.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/ngx_modules.ll \
		objs/ngx_modules.c


objs/src/core/nginx.ll:	$(CORE_DEPS) \
	src/core/nginx.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/nginx.ll \
		src/core/nginx.c


objs/src/core/ngx_log.ll:	$(CORE_DEPS) \
	src/core/ngx_log.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_log.ll \
		src/core/ngx_log.c


objs/src/core/ngx_palloc.ll:	$(CORE_DEPS) \
	src/core/ngx_palloc.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_palloc.ll \
		src/core/ngx_palloc.c


objs/src/core/ngx_array.ll:	$(CORE_DEPS) \
	src/core/ngx_array.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_array.ll \
		src/core/ngx_array.c


objs/src/core/ngx_list.ll:	$(CORE_DEPS) \
	src/core/ngx_list.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_list.ll \
		src/core/ngx_list.c


objs/src/core/ngx_hash.ll:	$(CORE_DEPS) \
	src/core/ngx_hash.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_hash.ll \
		src/core/ngx_hash.c


objs/src/core/ngx_buf.ll:	$(CORE_DEPS) \
	src/core/ngx_buf.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_buf.ll \
		src/core/ngx_buf.c


objs/src/core/ngx_queue.ll:	$(CORE_DEPS) \
	src/core/ngx_queue.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_queue.ll \
		src/core/ngx_queue.c


objs/src/core/ngx_output_chain.ll:	$(CORE_DEPS) \
	src/core/ngx_output_chain.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_output_chain.ll \
		src/core/ngx_output_chain.c


objs/src/core/ngx_string.ll:	$(CORE_DEPS) \
	src/core/ngx_string.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_string.ll \
		src/core/ngx_string.c


objs/src/core/ngx_parse.ll:	$(CORE_DEPS) \
	src/core/ngx_parse.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_parse.ll \
		src/core/ngx_parse.c


objs/src/core/ngx_inet.ll:	$(CORE_DEPS) \
	src/core/ngx_inet.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_inet.ll \
		src/core/ngx_inet.c


objs/src/core/ngx_file.ll:	$(CORE_DEPS) \
	src/core/ngx_file.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_file.ll \
		src/core/ngx_file.c


objs/src/core/ngx_crc32.ll:	$(CORE_DEPS) \
	src/core/ngx_crc32.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_crc32.ll \
		src/core/ngx_crc32.c


objs/src/core/ngx_murmurhash.ll:	$(CORE_DEPS) \
	src/core/ngx_murmurhash.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_murmurhash.ll \
		src/core/ngx_murmurhash.c


objs/src/core/ngx_md5.ll:	$(CORE_DEPS) \
	src/core/ngx_md5.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_md5.ll \
		src/core/ngx_md5.c


objs/src/core/ngx_rbtree.ll:	$(CORE_DEPS) \
	src/core/ngx_rbtree.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_rbtree.ll \
		src/core/ngx_rbtree.c


objs/src/core/ngx_radix_tree.ll:	$(CORE_DEPS) \
	src/core/ngx_radix_tree.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_radix_tree.ll \
		src/core/ngx_radix_tree.c


objs/src/core/ngx_slab.ll:	$(CORE_DEPS) \
	src/core/ngx_slab.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_slab.ll \
		src/core/ngx_slab.c


objs/src/core/ngx_times.ll:	$(CORE_DEPS) \
	src/core/ngx_times.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_times.ll \
		src/core/ngx_times.c


objs/src/core/ngx_shmtx.ll:	$(CORE_DEPS) \
	src/core/ngx_shmtx.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_shmtx.ll \
		src/core/ngx_shmtx.c


objs/src/core/ngx_connection.ll:	$(CORE_DEPS) \
	src/core/ngx_connection.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_connection.ll \
		src/core/ngx_connection.c


objs/src/core/ngx_cycle.ll:	$(CORE_DEPS) \
	src/core/ngx_cycle.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_cycle.ll \
		src/core/ngx_cycle.c


objs/src/core/ngx_spinlock.ll:	$(CORE_DEPS) \
	src/core/ngx_spinlock.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_spinlock.ll \
		src/core/ngx_spinlock.c


objs/src/core/ngx_cpuinfo.ll:	$(CORE_DEPS) \
	src/core/ngx_cpuinfo.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_cpuinfo.ll \
		src/core/ngx_cpuinfo.c


objs/src/core/ngx_conf_file.ll:	$(CORE_DEPS) \
	src/core/ngx_conf_file.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_conf_file.ll \
		src/core/ngx_conf_file.c


objs/src/core/ngx_resolver.ll:	$(CORE_DEPS) \
	src/core/ngx_resolver.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_resolver.ll \
		src/core/ngx_resolver.c


objs/src/core/ngx_open_file_cache.ll:	$(CORE_DEPS) \
	src/core/ngx_open_file_cache.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_open_file_cache.ll \
		src/core/ngx_open_file_cache.c


objs/src/core/ngx_crypt.ll:	$(CORE_DEPS) \
	src/core/ngx_crypt.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/core/ngx_crypt.ll \
		src/core/ngx_crypt.c


objs/src/event/ngx_event.ll:	$(CORE_DEPS) \
	src/event/ngx_event.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/event/ngx_event.ll \
		src/event/ngx_event.c


objs/src/event/ngx_event_timer.ll:	$(CORE_DEPS) \
	src/event/ngx_event_timer.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/event/ngx_event_timer.ll \
		src/event/ngx_event_timer.c


objs/src/event/ngx_event_posted.ll:	$(CORE_DEPS) \
	src/event/ngx_event_posted.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/event/ngx_event_posted.ll \
		src/event/ngx_event_posted.c


objs/src/event/ngx_event_busy_lock.ll:	$(CORE_DEPS) \
	src/event/ngx_event_busy_lock.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/event/ngx_event_busy_lock.ll \
		src/event/ngx_event_busy_lock.c


objs/src/event/ngx_event_accept.ll:	$(CORE_DEPS) \
	src/event/ngx_event_accept.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/event/ngx_event_accept.ll \
		src/event/ngx_event_accept.c


objs/src/event/ngx_event_connect.ll:	$(CORE_DEPS) \
	src/event/ngx_event_connect.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/event/ngx_event_connect.ll \
		src/event/ngx_event_connect.c


objs/src/event/ngx_event_pipe.ll:	$(CORE_DEPS) \
	src/event/ngx_event_pipe.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/event/ngx_event_pipe.ll \
		src/event/ngx_event_pipe.c


objs/src/os/unix/ngx_time.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_time.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_time.ll \
		src/os/unix/ngx_time.c


objs/src/os/unix/ngx_errno.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_errno.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_errno.ll \
		src/os/unix/ngx_errno.c


objs/src/os/unix/ngx_alloc.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_alloc.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_alloc.ll \
		src/os/unix/ngx_alloc.c


objs/src/os/unix/ngx_files.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_files.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_files.ll \
		src/os/unix/ngx_files.c


objs/src/os/unix/ngx_socket.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_socket.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_socket.ll \
		src/os/unix/ngx_socket.c


objs/src/os/unix/ngx_recv.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_recv.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_recv.ll \
		src/os/unix/ngx_recv.c


objs/src/os/unix/ngx_readv_chain.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_readv_chain.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_readv_chain.ll \
		src/os/unix/ngx_readv_chain.c


objs/src/os/unix/ngx_udp_recv.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_udp_recv.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_udp_recv.ll \
		src/os/unix/ngx_udp_recv.c


objs/src/os/unix/ngx_send.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_send.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_send.ll \
		src/os/unix/ngx_send.c


objs/src/os/unix/ngx_writev_chain.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_writev_chain.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_writev_chain.ll \
		src/os/unix/ngx_writev_chain.c


objs/src/os/unix/ngx_channel.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_channel.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_channel.ll \
		src/os/unix/ngx_channel.c


objs/src/os/unix/ngx_shmem.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_shmem.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_shmem.ll \
		src/os/unix/ngx_shmem.c


objs/src/os/unix/ngx_process.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_process.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_process.ll \
		src/os/unix/ngx_process.c


objs/src/os/unix/ngx_daemon.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_daemon.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_daemon.ll \
		src/os/unix/ngx_daemon.c


objs/src/os/unix/ngx_setaffinity.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_setaffinity.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_setaffinity.ll \
		src/os/unix/ngx_setaffinity.c


objs/src/os/unix/ngx_setproctitle.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_setproctitle.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_setproctitle.ll \
		src/os/unix/ngx_setproctitle.c


objs/src/os/unix/ngx_posix_init.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_posix_init.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_posix_init.ll \
		src/os/unix/ngx_posix_init.c


objs/src/os/unix/ngx_user.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_user.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_user.ll \
		src/os/unix/ngx_user.c


objs/src/os/unix/ngx_process_cycle.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_process_cycle.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_process_cycle.ll \
		src/os/unix/ngx_process_cycle.c


objs/src/os/unix/ngx_linux_init.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_linux_init.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_linux_init.ll \
		src/os/unix/ngx_linux_init.c


objs/src/event/modules/ngx_epoll_module.ll:	$(CORE_DEPS) \
	src/event/modules/ngx_epoll_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/event/modules/ngx_epoll_module.ll \
		src/event/modules/ngx_epoll_module.c


objs/src/os/unix/ngx_linux_sendfile_chain.ll:	$(CORE_DEPS) \
	src/os/unix/ngx_linux_sendfile_chain.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o objs/src/os/unix/ngx_linux_sendfile_chain.ll \
		src/os/unix/ngx_linux_sendfile_chain.c


objs/src/http/ngx_http.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http.ll \
		src/http/ngx_http.c


objs/src/http/ngx_http_core_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_core_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_core_module.ll \
		src/http/ngx_http_core_module.c


objs/src/http/ngx_http_special_response.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_special_response.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_special_response.ll \
		src/http/ngx_http_special_response.c


objs/src/http/ngx_http_request.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_request.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_request.ll \
		src/http/ngx_http_request.c


objs/src/http/ngx_http_parse.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_parse.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_parse.ll \
		src/http/ngx_http_parse.c


objs/src/http/ngx_http_header_filter_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_header_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_header_filter_module.ll \
		src/http/ngx_http_header_filter_module.c


objs/src/http/ngx_http_write_filter_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_write_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_write_filter_module.ll \
		src/http/ngx_http_write_filter_module.c


objs/src/http/ngx_http_copy_filter_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_copy_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_copy_filter_module.ll \
		src/http/ngx_http_copy_filter_module.c


objs/src/http/modules/ngx_http_log_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_log_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_log_module.ll \
		src/http/modules/ngx_http_log_module.c


objs/src/http/ngx_http_request_body.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_request_body.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_request_body.ll \
		src/http/ngx_http_request_body.c


objs/src/http/ngx_http_variables.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_variables.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_variables.ll \
		src/http/ngx_http_variables.c


objs/src/http/ngx_http_script.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_script.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_script.ll \
		src/http/ngx_http_script.c


objs/src/http/ngx_http_upstream.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_upstream.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_upstream.ll \
		src/http/ngx_http_upstream.c


objs/src/http/ngx_http_upstream_round_robin.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_upstream_round_robin.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_upstream_round_robin.ll \
		src/http/ngx_http_upstream_round_robin.c


objs/src/http/ngx_http_parse_time.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_parse_time.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_parse_time.ll \
		src/http/ngx_http_parse_time.c


objs/src/http/modules/ngx_http_static_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_static_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_static_module.ll \
		src/http/modules/ngx_http_static_module.c


objs/src/http/modules/ngx_http_index_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_index_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_index_module.ll \
		src/http/modules/ngx_http_index_module.c


objs/src/http/modules/ngx_http_chunked_filter_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_chunked_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_chunked_filter_module.ll \
		src/http/modules/ngx_http_chunked_filter_module.c


objs/src/http/modules/ngx_http_range_filter_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_range_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_range_filter_module.ll \
		src/http/modules/ngx_http_range_filter_module.c


objs/src/http/modules/ngx_http_headers_filter_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_headers_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_headers_filter_module.ll \
		src/http/modules/ngx_http_headers_filter_module.c


objs/src/http/modules/ngx_http_not_modified_filter_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_not_modified_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_not_modified_filter_module.ll \
		src/http/modules/ngx_http_not_modified_filter_module.c


objs/src/http/ngx_http_busy_lock.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_busy_lock.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_busy_lock.ll \
		src/http/ngx_http_busy_lock.c


objs/src/http/ngx_http_file_cache.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_file_cache.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_file_cache.ll \
		src/http/ngx_http_file_cache.c


objs/src/http/modules/ngx_http_gzip_filter_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_gzip_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_gzip_filter_module.ll \
		src/http/modules/ngx_http_gzip_filter_module.c


objs/src/http/ngx_http_postpone_filter_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_postpone_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/ngx_http_postpone_filter_module.ll \
		src/http/ngx_http_postpone_filter_module.c


objs/src/http/modules/ngx_http_ssi_filter_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_ssi_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_ssi_filter_module.ll \
		src/http/modules/ngx_http_ssi_filter_module.c


objs/src/http/modules/ngx_http_charset_filter_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_charset_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_charset_filter_module.ll \
		src/http/modules/ngx_http_charset_filter_module.c


objs/src/http/modules/ngx_http_userid_filter_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_userid_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_userid_filter_module.ll \
		src/http/modules/ngx_http_userid_filter_module.c


objs/src/http/modules/ngx_http_autoindex_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_autoindex_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_autoindex_module.ll \
		src/http/modules/ngx_http_autoindex_module.c


objs/src/http/modules/ngx_http_auth_basic_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_auth_basic_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_auth_basic_module.ll \
		src/http/modules/ngx_http_auth_basic_module.c


objs/src/http/modules/ngx_http_access_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_access_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_access_module.ll \
		src/http/modules/ngx_http_access_module.c


objs/src/http/modules/ngx_http_limit_conn_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_limit_conn_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_limit_conn_module.ll \
		src/http/modules/ngx_http_limit_conn_module.c


objs/src/http/modules/ngx_http_limit_req_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_limit_req_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_limit_req_module.ll \
		src/http/modules/ngx_http_limit_req_module.c


objs/src/http/modules/ngx_http_geo_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_geo_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_geo_module.ll \
		src/http/modules/ngx_http_geo_module.c


objs/src/http/modules/ngx_http_map_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_map_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_map_module.ll \
		src/http/modules/ngx_http_map_module.c


objs/src/http/modules/ngx_http_split_clients_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_split_clients_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_split_clients_module.ll \
		src/http/modules/ngx_http_split_clients_module.c


objs/src/http/modules/ngx_http_referer_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_referer_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_referer_module.ll \
		src/http/modules/ngx_http_referer_module.c


objs/src/http/modules/ngx_http_proxy_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_proxy_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_proxy_module.ll \
		src/http/modules/ngx_http_proxy_module.c


objs/src/http/modules/ngx_http_fastcgi_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_fastcgi_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_fastcgi_module.ll \
		src/http/modules/ngx_http_fastcgi_module.c


objs/src/http/modules/ngx_http_uwsgi_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_uwsgi_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_uwsgi_module.ll \
		src/http/modules/ngx_http_uwsgi_module.c


objs/src/http/modules/ngx_http_scgi_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_scgi_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_scgi_module.ll \
		src/http/modules/ngx_http_scgi_module.c


objs/src/http/modules/ngx_http_memcached_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_memcached_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_memcached_module.ll \
		src/http/modules/ngx_http_memcached_module.c


objs/src/http/modules/ngx_http_empty_gif_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_empty_gif_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_empty_gif_module.ll \
		src/http/modules/ngx_http_empty_gif_module.c


objs/src/http/modules/ngx_http_browser_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_browser_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_browser_module.ll \
		src/http/modules/ngx_http_browser_module.c


objs/src/http/modules/ngx_http_upstream_ip_hash_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_upstream_ip_hash_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_upstream_ip_hash_module.ll \
		src/http/modules/ngx_http_upstream_ip_hash_module.c


objs/src/http/modules/ngx_http_upstream_least_conn_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_upstream_least_conn_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_upstream_least_conn_module.ll \
		src/http/modules/ngx_http_upstream_least_conn_module.c


objs/src/http/modules/ngx_http_upstream_keepalive_module.ll:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_upstream_keepalive_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o objs/src/http/modules/ngx_http_upstream_keepalive_module.ll \
		src/http/modules/ngx_http_upstream_keepalive_module.c


manpage:	objs/nginx.8

objs/nginx.8:	man/nginx.8 objs/ngx_auto_config.h
	sed -e "s|%%PREFIX%%|/usr/local/nginx|" \
		-e "s|%%PID_PATH%%|/usr/local/nginx/logs/nginx.pid|" \
		-e "s|%%CONF_PATH%%|/usr/local/nginx/conf/nginx.conf|" \
		-e "s|%%ERROR_LOG_PATH%%|/usr/local/nginx/logs/error.log|" \
		< man/nginx.8 > $@

install:	objs/nginx 		
	test -d '$(DESTDIR)/usr/local/nginx' || mkdir -p '$(DESTDIR)/usr/local/nginx'

	test -d '$(DESTDIR)/usr/local/nginx/sbin' 		|| mkdir -p '$(DESTDIR)/usr/local/nginx/sbin'
	test ! -f '$(DESTDIR)/usr/local/nginx/sbin/nginx' 		|| mv '$(DESTDIR)/usr/local/nginx/sbin/nginx' 			'$(DESTDIR)/usr/local/nginx/sbin/nginx.llld'
	cp objs/nginx '$(DESTDIR)/usr/local/nginx/sbin/nginx'

	test -d '$(DESTDIR)/usr/local/nginx/conf' 		|| mkdir -p '$(DESTDIR)/usr/local/nginx/conf'

	cp conf/koi-win '$(DESTDIR)/usr/local/nginx/conf'
	cp conf/koi-utf '$(DESTDIR)/usr/local/nginx/conf'
	cp conf/win-utf '$(DESTDIR)/usr/local/nginx/conf'

	test -f '$(DESTDIR)/usr/local/nginx/conf/mime.types' 		|| cp conf/mime.types '$(DESTDIR)/usr/local/nginx/conf'
	cp conf/mime.types '$(DESTDIR)/usr/local/nginx/conf/mime.types.default'

	test -f '$(DESTDIR)/usr/local/nginx/conf/fastcgi_params' 		|| cp conf/fastcgi_params '$(DESTDIR)/usr/local/nginx/conf'
	cp conf/fastcgi_params 		'$(DESTDIR)/usr/local/nginx/conf/fastcgi_params.default'

	test -f '$(DESTDIR)/usr/local/nginx/conf/fastcgi.conf' 		|| cp conf/fastcgi.conf '$(DESTDIR)/usr/local/nginx/conf'
	cp conf/fastcgi.conf '$(DESTDIR)/usr/local/nginx/conf/fastcgi.conf.default'

	test -f '$(DESTDIR)/usr/local/nginx/conf/uwsgi_params' 		|| cp conf/uwsgi_params '$(DESTDIR)/usr/local/nginx/conf'
	cp conf/uwsgi_params 		'$(DESTDIR)/usr/local/nginx/conf/uwsgi_params.default'

	test -f '$(DESTDIR)/usr/local/nginx/conf/scgi_params' 		|| cp conf/scgi_params '$(DESTDIR)/usr/local/nginx/conf'
	cp conf/scgi_params 		'$(DESTDIR)/usr/local/nginx/conf/scgi_params.default'

	test -f '$(DESTDIR)/usr/local/nginx/conf/nginx.conf' 		|| cp conf/nginx.conf '$(DESTDIR)/usr/local/nginx/conf/nginx.conf'
	cp conf/nginx.conf '$(DESTDIR)/usr/local/nginx/conf/nginx.conf.default'

	test -d '$(DESTDIR)/usr/local/nginx/logs' 		|| mkdir -p '$(DESTDIR)/usr/local/nginx/logs'

	test -d '$(DESTDIR)/usr/local/nginx/logs' || 		mkdir -p '$(DESTDIR)/usr/local/nginx/logs'

	test -d '$(DESTDIR)/usr/local/nginx/html' 		|| cp -R html '$(DESTDIR)/usr/local/nginx'

	test -d '$(DESTDIR)/usr/local/nginx/logs' || 		mkdir -p '$(DESTDIR)/usr/local/nginx/logs'
