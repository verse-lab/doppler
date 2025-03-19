; ModuleID = 'latency.c'
source_filename = "latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dict = type { %struct.dictType*, [2 x %struct.dictEntry**], [2 x i64], i64, i16, [2 x i8] }
%struct.dictType = type { i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, {}*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* }
%struct.dictEntry = type { i8*, %union.anon, %struct.dictEntry*, [0 x i8*] }
%union.anon = type { i8* }
%struct.redisServer = type { i32, i64, i8*, i8*, i8**, i32, i32, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, %struct.rax*, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i32, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i64, %struct.dict*, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, i32, i32, i32, [16 x i8*], i32, i8*, i8*, i32, %struct.socketFds, %struct.socketFds, i32, i32, %struct.socketFds, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.clientMemUsageBucket*, %struct.rax*, i64, i32, %struct.rax*, i32, %struct.list*, i64, [3 x %struct.pause_event*], [256 x i8], %struct.dict*, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, [4 x i64], i64, i64, i64, i64, i64, i64, i64, i64, [5 x %struct.anon.5], i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i8*, [3 x %struct.clientBufferLimitsConfig], i32, i32, double*, i32, i32, i32, i32, i8*, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.aofManifest*, i32, i64, i64, i64, i64, %struct.saveparam*, i32, i8*, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.connection**, i32, i32, i8*, i32, i32, i32, [2 x i32], i32, %struct.redisOpArray, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, %struct.replBacklog*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.list*, i8*, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, %struct.connection*, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i64, i32, %struct.list*, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64, [3 x i32], i32, i32, i32, [8 x i32], %struct.list*, %struct.list*, i32, i64, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, i64, i64, i64, %struct.dict*, %struct.dict*, i32, %struct.dict*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.client*, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i64, i8*, i32, i32, i64, i32, i32, i32, %struct.redisTLSContextConfig, i8*, i8*, i8*, i8*, %struct.sentinelConfig*, i64, i32, i8*, i32, i32, i32, i64, i32 }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, i64, %struct.list*, %struct.clusterSlotToKeyMapping* }
%struct.clusterSlotToKeyMapping = type opaque
%struct.aeEventLoop = type { i32, i32, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)*, i32 }
%struct.aeFileEvent = type { i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent*, i32 }
%struct.socketFds = type { [16 x i32], i32 }
%struct.clientMemUsageBucket = type { %struct.list*, i64 }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxNode = type { i32, [0 x i8] }
%struct.pause_event = type { i32, i64 }
%struct.malloc_stats = type { i64, i64, i64, i64, i64 }
%struct.anon.5 = type { i64, i64, [16 x i64], i32 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.aofManifest = type { %struct.aofInfo*, %struct.list*, %struct.list*, i64, i64, i32 }
%struct.aofInfo = type { i8*, i64, i32 }
%struct.saveparam = type { i64, i32 }
%struct.redisOpArray = type { %struct.redisOp*, i32, i32 }
%struct.redisOp = type { %struct.redisObject**, i32, i32, i32 }
%struct.redisObject = type { i32, i32, i8* }
%struct.replBacklog = type { %struct.listNode*, i64, %struct.rax*, i64, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.connection = type { %struct.ConnectionType*, i32, i16, i16, i32, i8*, void (%struct.connection*)*, void (%struct.connection*)*, void (%struct.connection*)*, i32 }
%struct.ConnectionType = type { void (%struct.aeEventLoop*, i32, i8*, i32)*, i32 (%struct.connection*, i8*, i32, i8*, void (%struct.connection*)*)*, i32 (%struct.connection*, i8*, i64)*, i32 (%struct.connection*, %struct.iovec*, i32)*, i32 (%struct.connection*, i8*, i64)*, void (%struct.connection*)*, i32 (%struct.connection*, void (%struct.connection*)*)*, i32 (%struct.connection*, void (%struct.connection*)*, i32)*, i32 (%struct.connection*, void (%struct.connection*)*)*, i8* (%struct.connection*)*, i32 (%struct.connection*, i8*, i32, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i32 (%struct.connection*)* }
%struct.iovec = type { i8*, i64 }
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.clusterState = type opaque
%struct.client = type { i64, i64, %struct.connection*, i32, %struct.redisDb*, %struct.redisObject*, i8*, i64, i64, i32, %struct.redisObject**, i32, i32, %struct.redisObject**, i64, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.user*, i32, i32, i64, %struct.list*, i64, %struct.list*, i64, i64, i64, i32, %struct.dictEntry*, i64, i64, i32, i32, i32, i32, i64, i64, i8*, i64, i64, i64, i64, i64, i64, i64, [41 x i8], i32, i8*, i32, i32, %struct.multiState, i32, %struct.blockingState, i64, %struct.list*, %struct.dict*, %struct.list*, %struct.dict*, i8*, i8*, %struct.listNode*, %struct.listNode*, %struct.listNode*, void (i64, i8*)*, i8*, i8*, i64, %struct.rax*, i64, i32, %struct.listNode*, %struct.clientMemUsageBucket*, %struct.listNode*, i64, i64, i64, i32, i64, i8* }
%struct.redisCommand = type { i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, %struct.commandHistory*, i8**, void (%struct.client*)*, i32, i64, i64, [4 x %struct.keySpec], i32 (%struct.redisCommand*, %struct.redisObject**, i32, %struct.getKeysResult*)*, %struct.redisCommand*, %struct.redisCommandArg*, i64, i64, i64, i64, i32, i8*, %struct.hdr_histogram*, %struct.keySpec*, %struct.keySpec, i32, i32, i32, i32, i32, %struct.dict*, %struct.redisCommand*, %struct.RedisModuleCommand* }
%struct.commandHistory = type { i8*, i8* }
%struct.getKeysResult = type { [256 x %struct.keyReference], %struct.keyReference*, i32, i32 }
%struct.keyReference = type { i32, i32 }
%struct.redisCommandArg = type { i8*, i32, i32, i8*, i8*, i8*, i32, i8*, %struct.redisCommandArg*, i32 }
%struct.hdr_histogram = type { i64, i64, i32, i32, i32, i32, i64, i32, i32, i64, i64, i32, double, i32, i64, i64* }
%struct.keySpec = type { i8*, i64, i32, %union.anon.0, i32, %union.anon.2 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i8*, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32 }
%struct.RedisModuleCommand = type opaque
%struct.user = type { i8*, i32, %struct.list*, %struct.list*, %struct.redisObject* }
%struct.multiState = type { %struct.multiCmd*, i32, i32, i32, i64, i32 }
%struct.multiCmd = type { %struct.redisObject**, i32, i32, %struct.redisCommand* }
%struct.blockingState = type { i64, i64, %struct.dict*, %struct.redisObject*, %struct.blockPos, i64, %struct.redisObject*, %struct.redisObject*, i32, i32, i64, i8* }
%struct.blockPos = type { i32, i32 }
%struct.redisTLSContextConfig = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.sentinelConfig = type { %struct.list*, %struct.list*, %struct.list* }
%struct.latencyTimeSeries = type { i32, i32, [160 x %struct.latencySample] }
%struct.latencySample = type { i32, i32 }
%struct.dictIterator = type { %struct.dict*, i64, i32, i32, %struct.dictEntry*, %struct.dictEntry*, i64 }
%struct.latencyStats = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.hdr_iter = type { %struct.hdr_histogram*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.6, i1 (%struct.hdr_iter*)* }
%union.anon.6 = type { %struct.hdr_iter_linear }
%struct.hdr_iter_linear = type { i64, i64, i64, i64 }
%struct.sdshdr8 = type { i8, i8, i8, [0 x i8] }
%struct.sdshdr16 = type <{ i16, i16, i8, [0 x i8] }>
%struct.sdshdr32 = type <{ i32, i32, i8, [0 x i8] }>
%struct.sdshdr64 = type <{ i64, i64, i8, [0 x i8] }>
%struct.sequence = type { i32, i32, %struct.sample*, double, double }
%struct.sample = type { double, i8* }

@latencyTimeSeriesDictType = dso_local global { i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* } { i64 (i8*)* @dictStringHash, i8* (%struct.dict*, i8*)* null, i8* (%struct.dict*, i8*)* null, i32 (%struct.dict*, i8*, i8*)* @dictStringKeyCompare, void (%struct.dict*, i8*)* @dictVanillaFree, void (%struct.dict*, i8*)* @dictVanillaFree, i32 (i64, double)* null, i64 (%struct.dict*)* null }, align 8, !dbg !0
@.str = private unnamed_addr constant [15 x i8] c"AnonHugePages:\00", align 1
@server = external dso_local global %struct.redisServer, align 8
@.str.1 = private unnamed_addr constant [289 x i8] c"I'm sorry, Dave, I can't do that. Latency monitoring is disabled in this Redis instance. You may use \22CONFIG SET latency-monitor-threshold <milliseconds>.\22 in order to enable it. If we weren't in a deep space mission I'd suggest to take a look at https://redis.io/topics/latency-monitor.\0A\00", align 1
@.str.2 = private unnamed_addr constant [109 x i8] c"Dave, I have observed latency spikes in this Redis instance. You don't mind talking about it, do you Dave?\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [110 x i8] c"%d. %s: %d latency spikes (average %lums, mean deviation %lums, period %.2f sec). Worst all time event %lums.\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"terrible\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"poor\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"excellent\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c" Fork rate is %.2f GB/sec (%s).\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"fast-command\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"aof-write-pending-fsync\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"aof-write-active-child\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"aof-write-alone\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"aof-fsync-always\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"aof-fstat\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"rdb-unlink-temp-file\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"aof-rewrite-diff-write\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"aof-rename\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"expire-cycle\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"eviction-del\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"eviction-cycle\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.24 = private unnamed_addr constant [197 x i8] c"Dave, no latency spike was observed during the lifetime of this Redis instance, not in the slightest bit. I honestly think you ought to sit down calmly, take a stress pill, and think things over.\0A\00", align 1
@.str.25 = private unnamed_addr constant [172 x i8] c"\0AWhile there are latency events logged, I'm not able to suggest any easy fix. Please use the Redis community to get some help, providing this report in your help request.\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"\0AI have a few advices for you:\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [302 x i8] c"- If you are using a virtual machine, consider upgrading it with a faster one using a hypervisior that provides less latency during fork() calls. Xen is known to have poor fork() performance. Even in the context of the same VM provider, certain kinds of instances can execute fork faster than others.\0A\00", align 1
@.str.28 = private unnamed_addr constant [262 x i8] c"- There are latency issues with potentially slow commands you are using. Try to enable the Slow Log Redis feature using the command 'CONFIG SET slowlog-log-slower-than %llu'. If the Slow log is disabled Redis is not able to log slow commands execution for you.\0A\00", align 1
@.str.29 = private unnamed_addr constant [174 x i8] c"- Your current Slow Log configuration only logs events that are slower than your configured latency monitor threshold. Please use 'CONFIG SET slowlog-log-slower-than %llu'.\0A\00", align 1
@.str.30 = private unnamed_addr constant [175 x i8] c"- Check your Slow Log to understand what are the commands you are running which are too slow to execute. Please check https://redis.io/commands/slowlog for more information.\0A\00", align 1
@.str.31 = private unnamed_addr constant [618 x i8] c"- The system is slow to execute Redis code paths not containing system calls. This usually means the system does not provide Redis CPU time to run for long periods. You should try to:\0A  1) Lower the system load.\0A  2) Use a computer / VM just for Redis if you are running other software in the same system.\0A  3) Check if you have a \22noisy neighbour\22 problem.\0A  4) Check with 'redis-cli --intrinsic-latency 100' what is the intrinsic latency in your system.\0A  5) Check if the problem is allocator-related by recompiling Redis with MALLOC=libc, if you are using Jemalloc. However this may create fragmentation problems.\0A\00", align 1
@.str.32 = private unnamed_addr constant [174 x i8] c"- It is strongly advised to use local disks for persistence, especially if you are using AOF. Remote disks provided by platform-as-a-service providers are known to be slow.\0A\00", align 1
@.str.33 = private unnamed_addr constant [317 x i8] c"- SSD disks are able to reduce fsync latency, and total time needed for snapshotting and AOF log rewriting (resulting in smaller memory usage). With extremely high write load SSD disks can be a good option. However Redis should perform reasonably with high load using normal disks. Use this advice as a last resort.\0A\00", align 1
@.str.34 = private unnamed_addr constant [330 x i8] c"- Mounting ext3/4 filesystems with data=writeback can provide a performance boost compared to data=ordered, however this mode of operation provides less guarantees, and sometimes it can happen that after a hard crash the AOF file will have a half-written command at the end and will require to be repaired before Redis restarts.\0A\00", align 1
@.str.35 = private unnamed_addr constant [156 x i8] c"- Try to lower the disk contention. This is often caused by other disk intensive processes running in the same computer (including other Redis instances).\0A\00", align 1
@.str.36 = private unnamed_addr constant [307 x i8] c"- Assuming from the point of view of data safety this is viable in your environment, you could try to enable the 'no-appendfsync-on-rewrite' option, so that fsync will not be performed while there is a child rewriting the AOF file or producing an RDB file (the moment where there is high disk contention).\0A\00", align 1
@.str.37 = private unnamed_addr constant [156 x i8] c"- Your fsync policy is set to 'always'. It is very hard to get good performances with such a setup, if possible try to relax the fsync policy to 'onesec'.\0A\00", align 1
@.str.38 = private unnamed_addr constant [363 x i8] c"- Latency during the AOF atomic rename operation or when the final difference is flushed to the AOF file at the end of the rewrite, sometimes is caused by very high write load, causing the AOF buffer to get very large. If possible try to send less commands to accomplish the same work, or use Lua scripts to group multiple operations into a single EVALSHA call.\0A\00", align 1
@.str.39 = private unnamed_addr constant [148 x i8] c"- In order to make the Redis keys expiring process more incremental, try to set the 'hz' configuration parameter to 100 using 'CONFIG SET hz 100'.\0A\00", align 1
@.str.40 = private unnamed_addr constant [240 x i8] c"- Deleting, expiring or evicting (because of maxmemory policy) large objects is a blocking operation. If you have very large objects that are often deleted, expired, or evicted, try to fragment those objects into multiple smaller objects.\0A\00", align 1
@.str.41 = private unnamed_addr constant [295 x i8] c"- Sudden changes to the 'maxmemory' setting via 'CONFIG SET', or allocation of large objects via sets or sorted sets intersections, STORE option of SORT, Redis Cluster large keys migrations (RESTORE command), may create sudden memory pressure forcing the server to block trying to evict keys. \0A\00", align 1
@.str.42 = private unnamed_addr constant [530 x i8] c"- I detected a non zero amount of anonymous huge pages used by your process. This creates very serious latency events in different conditions, especially when Redis is persisting on disk. To disable THP support use the command 'echo never > /sys/kernel/mm/transparent_hugepage/enabled', make sure to also add it into /etc/rc.local so that the command will be executed again after a reboot. Note that even if you have already disabled THP, you still need to restart the Redis process to get rid of the huge pages already created.\0A\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"calls\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"histogram_usec\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%ds\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"%dm\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"%dh\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"%dd\00", align 1
@.str.49 = private unnamed_addr constant [53 x i8] c"%s - high %lu ms, low %lu ms (all time high %lu ms)\0A\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"latest\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"doctor\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"histogram\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"DOCTOR\00", align 1
@.str.60 = private unnamed_addr constant [53 x i8] c"    Return a human readable latency analysis report.\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"GRAPH <event>\00", align 1
@.str.62 = private unnamed_addr constant [57 x i8] c"    Return an ASCII latency graph for the <event> class.\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"HISTORY <event>\00", align 1
@.str.64 = private unnamed_addr constant [55 x i8] c"    Return time-latency samples for the <event> class.\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"LATEST\00", align 1
@.str.66 = private unnamed_addr constant [54 x i8] c"    Return the latest latency samples for all events.\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"RESET [<event> ...]\00", align 1
@.str.68 = private unnamed_addr constant [55 x i8] c"    Reset latency data of one or more <event> classes.\00", align 1
@.str.69 = private unnamed_addr constant [52 x i8] c"    (default: reset all data for all event classes)\00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c"HISTOGRAM [COMMAND ...]\00", align 1
@.str.71 = private unnamed_addr constant [112 x i8] c"    Return a cumulative distribution of latencies in the format of a histogram for the specified command names.\00", align 1
@.str.72 = private unnamed_addr constant [66 x i8] c"    If no commands are specified then all histograms are replied.\00", align 1
@__const.latencyCommand.help = private unnamed_addr constant [15 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.72, i32 0, i32 0), i8* null], align 16
@.str.73 = private unnamed_addr constant [36 x i8] c"No samples available for event '%s'\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dictStringKeyCompare(%struct.dict* %d, i8* %key1, i8* %key2) #0 !dbg !709 {
entry:
  %d.addr = alloca %struct.dict*, align 8
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  store %struct.dict* %d, %struct.dict** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dict** %d.addr, metadata !711, metadata !DIExpression()), !dbg !712
  store i8* %key1, i8** %key1.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %key1.addr, metadata !713, metadata !DIExpression()), !dbg !714
  store i8* %key2, i8** %key2.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %key2.addr, metadata !715, metadata !DIExpression()), !dbg !716
  %0 = load %struct.dict*, %struct.dict** %d.addr, align 8, !dbg !717
  %1 = load i8*, i8** %key1.addr, align 8, !dbg !718
  %2 = load i8*, i8** %key2.addr, align 8, !dbg !719
  %call = call i32 @strcmp(i8* %1, i8* %2) #7, !dbg !720
  %cmp = icmp eq i32 %call, 0, !dbg !721
  %conv = zext i1 %cmp to i32, !dbg !721
  ret i32 %conv, !dbg !722
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @dictStringHash(i8* %key) #0 !dbg !723 {
entry:
  %key.addr = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !724, metadata !DIExpression()), !dbg !725
  %0 = load i8*, i8** %key.addr, align 8, !dbg !726
  %1 = load i8*, i8** %key.addr, align 8, !dbg !727
  %call = call i64 @strlen(i8* %1) #7, !dbg !728
  %call1 = call i64 @dictGenHashFunction(i8* %0, i64 %call), !dbg !729
  ret i64 %call1, !dbg !730
}

declare dso_local i64 @dictGenHashFunction(i8*, i64) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

declare dso_local void @dictVanillaFree(%struct.dict*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @THPGetAnonHugePagesSize() #0 !dbg !731 {
entry:
  %call = call i64 @zmalloc_get_smap_bytes_by_field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 -1), !dbg !734
  %conv = trunc i64 %call to i32, !dbg !734
  ret i32 %conv, !dbg !735
}

declare dso_local i64 @zmalloc_get_smap_bytes_by_field(i8*, i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @latencyMonitorInit() #0 !dbg !736 {
entry:
  %call = call %struct.dict* @dictCreate(%struct.dictType* bitcast ({ i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* }* @latencyTimeSeriesDictType to %struct.dictType*)), !dbg !739
  store %struct.dict* %call, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 383), align 8, !dbg !740
  ret void, !dbg !741
}

declare dso_local %struct.dict* @dictCreate(%struct.dictType*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @latencyAddSample(i8* %event, i64 %latency) #0 !dbg !742 {
entry:
  %event.addr = alloca i8*, align 8
  %latency.addr = alloca i64, align 8
  %ts = alloca %struct.latencyTimeSeries*, align 8
  %now = alloca i64, align 8
  %prev = alloca i32, align 4
  store i8* %event, i8** %event.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %event.addr, metadata !745, metadata !DIExpression()), !dbg !746
  store i64 %latency, i64* %latency.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %latency.addr, metadata !747, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.declare(metadata %struct.latencyTimeSeries** %ts, metadata !749, metadata !DIExpression()), !dbg !764
  %0 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 383), align 8, !dbg !765
  %1 = load i8*, i8** %event.addr, align 8, !dbg !766
  %call = call i8* @dictFetchValue(%struct.dict* %0, i8* %1), !dbg !767
  %2 = bitcast i8* %call to %struct.latencyTimeSeries*, !dbg !767
  store %struct.latencyTimeSeries* %2, %struct.latencyTimeSeries** %ts, align 8, !dbg !764
  call void @llvm.dbg.declare(metadata i64* %now, metadata !768, metadata !DIExpression()), !dbg !769
  %call1 = call i64 @time(i64* null) #8, !dbg !770
  store i64 %call1, i64* %now, align 8, !dbg !769
  call void @llvm.dbg.declare(metadata i32* %prev, metadata !771, metadata !DIExpression()), !dbg !772
  %3 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !773
  %cmp = icmp eq %struct.latencyTimeSeries* %3, null, !dbg !775
  br i1 %cmp, label %if.then, label %if.end, !dbg !776

if.then:                                          ; preds = %entry
  %call2 = call i8* @zmalloc(i64 1288), !dbg !777
  %4 = bitcast i8* %call2 to %struct.latencyTimeSeries*, !dbg !777
  store %struct.latencyTimeSeries* %4, %struct.latencyTimeSeries** %ts, align 8, !dbg !779
  %5 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !780
  %idx = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %5, i32 0, i32 0, !dbg !781
  store i32 0, i32* %idx, align 4, !dbg !782
  %6 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !783
  %max = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %6, i32 0, i32 1, !dbg !784
  store i32 0, i32* %max, align 4, !dbg !785
  %7 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !786
  %samples = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %7, i32 0, i32 2, !dbg !787
  %arraydecay = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples, i64 0, i64 0, !dbg !788
  %8 = bitcast %struct.latencySample* %arraydecay to i8*, !dbg !788
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 1280, i1 false), !dbg !788
  %9 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 383), align 8, !dbg !789
  %10 = load i8*, i8** %event.addr, align 8, !dbg !790
  %call3 = call i8* @zstrdup(i8* %10), !dbg !791
  %11 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !792
  %12 = bitcast %struct.latencyTimeSeries* %11 to i8*, !dbg !792
  %call4 = call i32 @dictAdd(%struct.dict* %9, i8* %call3, i8* %12), !dbg !793
  br label %if.end, !dbg !794

if.end:                                           ; preds = %if.then, %entry
  %13 = load i64, i64* %latency.addr, align 8, !dbg !795
  %14 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !797
  %max5 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %14, i32 0, i32 1, !dbg !798
  %15 = load i32, i32* %max5, align 4, !dbg !798
  %conv = zext i32 %15 to i64, !dbg !797
  %cmp6 = icmp sgt i64 %13, %conv, !dbg !799
  br i1 %cmp6, label %if.then8, label %if.end11, !dbg !800

if.then8:                                         ; preds = %if.end
  %16 = load i64, i64* %latency.addr, align 8, !dbg !801
  %conv9 = trunc i64 %16 to i32, !dbg !801
  %17 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !802
  %max10 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %17, i32 0, i32 1, !dbg !803
  store i32 %conv9, i32* %max10, align 4, !dbg !804
  br label %if.end11, !dbg !802

if.end11:                                         ; preds = %if.then8, %if.end
  %18 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !805
  %idx12 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %18, i32 0, i32 0, !dbg !806
  %19 = load i32, i32* %idx12, align 4, !dbg !806
  %add = add nsw i32 %19, 160, !dbg !807
  %sub = sub nsw i32 %add, 1, !dbg !808
  %rem = srem i32 %sub, 160, !dbg !809
  store i32 %rem, i32* %prev, align 4, !dbg !810
  %20 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !811
  %samples13 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %20, i32 0, i32 2, !dbg !813
  %21 = load i32, i32* %prev, align 4, !dbg !814
  %idxprom = sext i32 %21 to i64, !dbg !811
  %arrayidx = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples13, i64 0, i64 %idxprom, !dbg !811
  %time = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx, i32 0, i32 0, !dbg !815
  %22 = load i32, i32* %time, align 4, !dbg !815
  %conv14 = sext i32 %22 to i64, !dbg !811
  %23 = load i64, i64* %now, align 8, !dbg !816
  %cmp15 = icmp eq i64 %conv14, %23, !dbg !817
  br i1 %cmp15, label %if.then17, label %if.end32, !dbg !818

if.then17:                                        ; preds = %if.end11
  %24 = load i64, i64* %latency.addr, align 8, !dbg !819
  %25 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !822
  %samples18 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %25, i32 0, i32 2, !dbg !823
  %26 = load i32, i32* %prev, align 4, !dbg !824
  %idxprom19 = sext i32 %26 to i64, !dbg !822
  %arrayidx20 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples18, i64 0, i64 %idxprom19, !dbg !822
  %latency21 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx20, i32 0, i32 1, !dbg !825
  %27 = load i32, i32* %latency21, align 4, !dbg !825
  %conv22 = zext i32 %27 to i64, !dbg !822
  %cmp23 = icmp sgt i64 %24, %conv22, !dbg !826
  br i1 %cmp23, label %if.then25, label %if.end31, !dbg !827

if.then25:                                        ; preds = %if.then17
  %28 = load i64, i64* %latency.addr, align 8, !dbg !828
  %conv26 = trunc i64 %28 to i32, !dbg !828
  %29 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !829
  %samples27 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %29, i32 0, i32 2, !dbg !830
  %30 = load i32, i32* %prev, align 4, !dbg !831
  %idxprom28 = sext i32 %30 to i64, !dbg !829
  %arrayidx29 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples27, i64 0, i64 %idxprom28, !dbg !829
  %latency30 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx29, i32 0, i32 1, !dbg !832
  store i32 %conv26, i32* %latency30, align 4, !dbg !833
  br label %if.end31, !dbg !829

if.end31:                                         ; preds = %if.then25, %if.then17
  br label %if.end51, !dbg !834

if.end32:                                         ; preds = %if.end11
  %31 = load i64, i64* %now, align 8, !dbg !835
  %conv33 = trunc i64 %31 to i32, !dbg !835
  %32 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !836
  %samples34 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %32, i32 0, i32 2, !dbg !837
  %33 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !838
  %idx35 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %33, i32 0, i32 0, !dbg !839
  %34 = load i32, i32* %idx35, align 4, !dbg !839
  %idxprom36 = sext i32 %34 to i64, !dbg !836
  %arrayidx37 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples34, i64 0, i64 %idxprom36, !dbg !836
  %time38 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx37, i32 0, i32 0, !dbg !840
  store i32 %conv33, i32* %time38, align 4, !dbg !841
  %35 = load i64, i64* %latency.addr, align 8, !dbg !842
  %conv39 = trunc i64 %35 to i32, !dbg !842
  %36 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !843
  %samples40 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %36, i32 0, i32 2, !dbg !844
  %37 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !845
  %idx41 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %37, i32 0, i32 0, !dbg !846
  %38 = load i32, i32* %idx41, align 4, !dbg !846
  %idxprom42 = sext i32 %38 to i64, !dbg !843
  %arrayidx43 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples40, i64 0, i64 %idxprom42, !dbg !843
  %latency44 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx43, i32 0, i32 1, !dbg !847
  store i32 %conv39, i32* %latency44, align 4, !dbg !848
  %39 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !849
  %idx45 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %39, i32 0, i32 0, !dbg !850
  %40 = load i32, i32* %idx45, align 4, !dbg !851
  %inc = add nsw i32 %40, 1, !dbg !851
  store i32 %inc, i32* %idx45, align 4, !dbg !851
  %41 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !852
  %idx46 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %41, i32 0, i32 0, !dbg !854
  %42 = load i32, i32* %idx46, align 4, !dbg !854
  %cmp47 = icmp eq i32 %42, 160, !dbg !855
  br i1 %cmp47, label %if.then49, label %if.end51, !dbg !856

if.then49:                                        ; preds = %if.end32
  %43 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !857
  %idx50 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %43, i32 0, i32 0, !dbg !858
  store i32 0, i32* %idx50, align 4, !dbg !859
  br label %if.end51, !dbg !857

if.end51:                                         ; preds = %if.end31, %if.then49, %if.end32
  ret void, !dbg !860
}

declare dso_local i8* @dictFetchValue(%struct.dict*, i8*) #3

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #4

declare dso_local i8* @zmalloc(i64) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) #3

declare dso_local i8* @zstrdup(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @latencyResetEvent(i8* %event_to_reset) #0 !dbg !861 {
entry:
  %event_to_reset.addr = alloca i8*, align 8
  %di = alloca %struct.dictIterator*, align 8
  %de = alloca %struct.dictEntry*, align 8
  %resets = alloca i32, align 4
  %event = alloca i8*, align 8
  store i8* %event_to_reset, i8** %event_to_reset.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %event_to_reset.addr, metadata !864, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.declare(metadata %struct.dictIterator** %di, metadata !866, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !879, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.declare(metadata i32* %resets, metadata !881, metadata !DIExpression()), !dbg !882
  store i32 0, i32* %resets, align 4, !dbg !882
  %0 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 383), align 8, !dbg !883
  %call = call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %0), !dbg !884
  store %struct.dictIterator* %call, %struct.dictIterator** %di, align 8, !dbg !885
  br label %while.cond, !dbg !886

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.dictIterator*, %struct.dictIterator** %di, align 8, !dbg !887
  %call1 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %1), !dbg !888
  store %struct.dictEntry* %call1, %struct.dictEntry** %de, align 8, !dbg !889
  %cmp = icmp ne %struct.dictEntry* %call1, null, !dbg !890
  br i1 %cmp, label %while.body, label %while.end, !dbg !886

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %event, metadata !891, metadata !DIExpression()), !dbg !893
  %2 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !894
  %key = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %2, i32 0, i32 0, !dbg !894
  %3 = load i8*, i8** %key, align 8, !dbg !894
  store i8* %3, i8** %event, align 8, !dbg !893
  %4 = load i8*, i8** %event_to_reset.addr, align 8, !dbg !895
  %cmp2 = icmp eq i8* %4, null, !dbg !897
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !898

lor.lhs.false:                                    ; preds = %while.body
  %5 = load i8*, i8** %event, align 8, !dbg !899
  %6 = load i8*, i8** %event_to_reset.addr, align 8, !dbg !900
  %call3 = call i32 @strcasecmp(i8* %5, i8* %6) #7, !dbg !901
  %cmp4 = icmp eq i32 %call3, 0, !dbg !902
  br i1 %cmp4, label %if.then, label %if.end, !dbg !903

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %7 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 383), align 8, !dbg !904
  %8 = load i8*, i8** %event, align 8, !dbg !906
  %call5 = call i32 @dictDelete(%struct.dict* %7, i8* %8), !dbg !907
  %9 = load i32, i32* %resets, align 4, !dbg !908
  %inc = add nsw i32 %9, 1, !dbg !908
  store i32 %inc, i32* %resets, align 4, !dbg !908
  br label %if.end, !dbg !909

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %while.cond, !dbg !886, !llvm.loop !910

while.end:                                        ; preds = %while.cond
  %10 = load %struct.dictIterator*, %struct.dictIterator** %di, align 8, !dbg !913
  call void @dictReleaseIterator(%struct.dictIterator* %10), !dbg !914
  %11 = load i32, i32* %resets, align 4, !dbg !915
  ret i32 %11, !dbg !916
}

declare dso_local %struct.dictIterator* @dictGetSafeIterator(%struct.dict*) #3

declare dso_local %struct.dictEntry* @dictNext(%struct.dictIterator*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @dictDelete(%struct.dict*, i8*) #3

declare dso_local void @dictReleaseIterator(%struct.dictIterator*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @analyzeLatencyForEvent(i8* %event, %struct.latencyStats* %ls) #0 !dbg !917 {
entry:
  %event.addr = alloca i8*, align 8
  %ls.addr = alloca %struct.latencyStats*, align 8
  %ts = alloca %struct.latencyTimeSeries*, align 8
  %j = alloca i32, align 4
  %sum = alloca i64, align 8
  %delta = alloca i64, align 8
  store i8* %event, i8** %event.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %event.addr, metadata !930, metadata !DIExpression()), !dbg !931
  store %struct.latencyStats* %ls, %struct.latencyStats** %ls.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.latencyStats** %ls.addr, metadata !932, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.declare(metadata %struct.latencyTimeSeries** %ts, metadata !934, metadata !DIExpression()), !dbg !935
  %0 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 383), align 8, !dbg !936
  %1 = load i8*, i8** %event.addr, align 8, !dbg !937
  %call = call i8* @dictFetchValue(%struct.dict* %0, i8* %1), !dbg !938
  %2 = bitcast i8* %call to %struct.latencyTimeSeries*, !dbg !938
  store %struct.latencyTimeSeries* %2, %struct.latencyTimeSeries** %ts, align 8, !dbg !935
  call void @llvm.dbg.declare(metadata i32* %j, metadata !939, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.declare(metadata i64* %sum, metadata !941, metadata !DIExpression()), !dbg !942
  %3 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !943
  %tobool = icmp ne %struct.latencyTimeSeries* %3, null, !dbg !943
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !943

cond.true:                                        ; preds = %entry
  %4 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !944
  %max = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %4, i32 0, i32 1, !dbg !945
  %5 = load i32, i32* %max, align 4, !dbg !945
  br label %cond.end, !dbg !943

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !943

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 0, %cond.false ], !dbg !943
  %6 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !946
  %all_time_high = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %6, i32 0, i32 0, !dbg !947
  store i32 %cond, i32* %all_time_high, align 8, !dbg !948
  %7 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !949
  %avg = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %7, i32 0, i32 1, !dbg !950
  store i32 0, i32* %avg, align 4, !dbg !951
  %8 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !952
  %min = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %8, i32 0, i32 2, !dbg !953
  store i32 0, i32* %min, align 8, !dbg !954
  %9 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !955
  %max1 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %9, i32 0, i32 3, !dbg !956
  store i32 0, i32* %max1, align 4, !dbg !957
  %10 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !958
  %mad = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %10, i32 0, i32 4, !dbg !959
  store i32 0, i32* %mad, align 8, !dbg !960
  %11 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !961
  %samples = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %11, i32 0, i32 5, !dbg !962
  store i32 0, i32* %samples, align 4, !dbg !963
  %12 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !964
  %period = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %12, i32 0, i32 6, !dbg !965
  store i64 0, i64* %period, align 8, !dbg !966
  %13 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !967
  %tobool2 = icmp ne %struct.latencyTimeSeries* %13, null, !dbg !967
  br i1 %tobool2, label %if.end, label %if.then, !dbg !969

if.then:                                          ; preds = %cond.end
  br label %if.end121, !dbg !970

if.end:                                           ; preds = %cond.end
  store i64 0, i64* %sum, align 8, !dbg !971
  store i32 0, i32* %j, align 4, !dbg !972
  br label %for.cond, !dbg !974

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %j, align 4, !dbg !975
  %cmp = icmp slt i32 %14, 160, !dbg !977
  br i1 %cmp, label %for.body, label %for.end, !dbg !978

for.body:                                         ; preds = %for.cond
  %15 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !979
  %samples3 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %15, i32 0, i32 2, !dbg !982
  %16 = load i32, i32* %j, align 4, !dbg !983
  %idxprom = sext i32 %16 to i64, !dbg !979
  %arrayidx = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples3, i64 0, i64 %idxprom, !dbg !979
  %time = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx, i32 0, i32 0, !dbg !984
  %17 = load i32, i32* %time, align 4, !dbg !984
  %cmp4 = icmp eq i32 %17, 0, !dbg !985
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !986

if.then5:                                         ; preds = %for.body
  br label %for.inc, !dbg !987

if.end6:                                          ; preds = %for.body
  %18 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !988
  %samples7 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %18, i32 0, i32 5, !dbg !989
  %19 = load i32, i32* %samples7, align 4, !dbg !990
  %inc = add i32 %19, 1, !dbg !990
  store i32 %inc, i32* %samples7, align 4, !dbg !990
  %20 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !991
  %samples8 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %20, i32 0, i32 5, !dbg !993
  %21 = load i32, i32* %samples8, align 4, !dbg !993
  %cmp9 = icmp eq i32 %21, 1, !dbg !994
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !995

if.then10:                                        ; preds = %if.end6
  %22 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !996
  %samples11 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %22, i32 0, i32 2, !dbg !998
  %23 = load i32, i32* %j, align 4, !dbg !999
  %idxprom12 = sext i32 %23 to i64, !dbg !996
  %arrayidx13 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples11, i64 0, i64 %idxprom12, !dbg !996
  %latency = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx13, i32 0, i32 1, !dbg !1000
  %24 = load i32, i32* %latency, align 4, !dbg !1000
  %25 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1001
  %max14 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %25, i32 0, i32 3, !dbg !1002
  store i32 %24, i32* %max14, align 4, !dbg !1003
  %26 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1004
  %min15 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %26, i32 0, i32 2, !dbg !1005
  store i32 %24, i32* %min15, align 8, !dbg !1006
  br label %if.end42, !dbg !1007

if.else:                                          ; preds = %if.end6
  %27 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1008
  %min16 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %27, i32 0, i32 2, !dbg !1011
  %28 = load i32, i32* %min16, align 8, !dbg !1011
  %29 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !1012
  %samples17 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %29, i32 0, i32 2, !dbg !1013
  %30 = load i32, i32* %j, align 4, !dbg !1014
  %idxprom18 = sext i32 %30 to i64, !dbg !1012
  %arrayidx19 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples17, i64 0, i64 %idxprom18, !dbg !1012
  %latency20 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx19, i32 0, i32 1, !dbg !1015
  %31 = load i32, i32* %latency20, align 4, !dbg !1015
  %cmp21 = icmp ugt i32 %28, %31, !dbg !1016
  br i1 %cmp21, label %if.then22, label %if.end28, !dbg !1017

if.then22:                                        ; preds = %if.else
  %32 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !1018
  %samples23 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %32, i32 0, i32 2, !dbg !1019
  %33 = load i32, i32* %j, align 4, !dbg !1020
  %idxprom24 = sext i32 %33 to i64, !dbg !1018
  %arrayidx25 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples23, i64 0, i64 %idxprom24, !dbg !1018
  %latency26 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx25, i32 0, i32 1, !dbg !1021
  %34 = load i32, i32* %latency26, align 4, !dbg !1021
  %35 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1022
  %min27 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %35, i32 0, i32 2, !dbg !1023
  store i32 %34, i32* %min27, align 8, !dbg !1024
  br label %if.end28, !dbg !1022

if.end28:                                         ; preds = %if.then22, %if.else
  %36 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1025
  %max29 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %36, i32 0, i32 3, !dbg !1027
  %37 = load i32, i32* %max29, align 4, !dbg !1027
  %38 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !1028
  %samples30 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %38, i32 0, i32 2, !dbg !1029
  %39 = load i32, i32* %j, align 4, !dbg !1030
  %idxprom31 = sext i32 %39 to i64, !dbg !1028
  %arrayidx32 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples30, i64 0, i64 %idxprom31, !dbg !1028
  %latency33 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx32, i32 0, i32 1, !dbg !1031
  %40 = load i32, i32* %latency33, align 4, !dbg !1031
  %cmp34 = icmp ult i32 %37, %40, !dbg !1032
  br i1 %cmp34, label %if.then35, label %if.end41, !dbg !1033

if.then35:                                        ; preds = %if.end28
  %41 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !1034
  %samples36 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %41, i32 0, i32 2, !dbg !1035
  %42 = load i32, i32* %j, align 4, !dbg !1036
  %idxprom37 = sext i32 %42 to i64, !dbg !1034
  %arrayidx38 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples36, i64 0, i64 %idxprom37, !dbg !1034
  %latency39 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx38, i32 0, i32 1, !dbg !1037
  %43 = load i32, i32* %latency39, align 4, !dbg !1037
  %44 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1038
  %max40 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %44, i32 0, i32 3, !dbg !1039
  store i32 %43, i32* %max40, align 4, !dbg !1040
  br label %if.end41, !dbg !1038

if.end41:                                         ; preds = %if.then35, %if.end28
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then10
  %45 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !1041
  %samples43 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %45, i32 0, i32 2, !dbg !1042
  %46 = load i32, i32* %j, align 4, !dbg !1043
  %idxprom44 = sext i32 %46 to i64, !dbg !1041
  %arrayidx45 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples43, i64 0, i64 %idxprom44, !dbg !1041
  %latency46 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx45, i32 0, i32 1, !dbg !1044
  %47 = load i32, i32* %latency46, align 4, !dbg !1044
  %conv = zext i32 %47 to i64, !dbg !1041
  %48 = load i64, i64* %sum, align 8, !dbg !1045
  %add = add i64 %48, %conv, !dbg !1045
  store i64 %add, i64* %sum, align 8, !dbg !1045
  %49 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1046
  %period47 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %49, i32 0, i32 6, !dbg !1048
  %50 = load i64, i64* %period47, align 8, !dbg !1048
  %cmp48 = icmp eq i64 %50, 0, !dbg !1049
  br i1 %cmp48, label %if.then58, label %lor.lhs.false, !dbg !1050

lor.lhs.false:                                    ; preds = %if.end42
  %51 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !1051
  %samples50 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %51, i32 0, i32 2, !dbg !1052
  %52 = load i32, i32* %j, align 4, !dbg !1053
  %idxprom51 = sext i32 %52 to i64, !dbg !1051
  %arrayidx52 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples50, i64 0, i64 %idxprom51, !dbg !1051
  %time53 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx52, i32 0, i32 0, !dbg !1054
  %53 = load i32, i32* %time53, align 4, !dbg !1054
  %conv54 = sext i32 %53 to i64, !dbg !1051
  %54 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1055
  %period55 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %54, i32 0, i32 6, !dbg !1056
  %55 = load i64, i64* %period55, align 8, !dbg !1056
  %cmp56 = icmp slt i64 %conv54, %55, !dbg !1057
  br i1 %cmp56, label %if.then58, label %if.end65, !dbg !1058

if.then58:                                        ; preds = %lor.lhs.false, %if.end42
  %56 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !1059
  %samples59 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %56, i32 0, i32 2, !dbg !1060
  %57 = load i32, i32* %j, align 4, !dbg !1061
  %idxprom60 = sext i32 %57 to i64, !dbg !1059
  %arrayidx61 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples59, i64 0, i64 %idxprom60, !dbg !1059
  %time62 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx61, i32 0, i32 0, !dbg !1062
  %58 = load i32, i32* %time62, align 4, !dbg !1062
  %conv63 = sext i32 %58 to i64, !dbg !1059
  %59 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1063
  %period64 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %59, i32 0, i32 6, !dbg !1064
  store i64 %conv63, i64* %period64, align 8, !dbg !1065
  br label %if.end65, !dbg !1063

if.end65:                                         ; preds = %if.then58, %lor.lhs.false
  br label %for.inc, !dbg !1066

for.inc:                                          ; preds = %if.end65, %if.then5
  %60 = load i32, i32* %j, align 4, !dbg !1067
  %inc66 = add nsw i32 %60, 1, !dbg !1067
  store i32 %inc66, i32* %j, align 4, !dbg !1067
  br label %for.cond, !dbg !1068, !llvm.loop !1069

for.end:                                          ; preds = %for.cond
  %61 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1071
  %samples67 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %61, i32 0, i32 5, !dbg !1073
  %62 = load i32, i32* %samples67, align 4, !dbg !1073
  %tobool68 = icmp ne i32 %62, 0, !dbg !1071
  br i1 %tobool68, label %if.then69, label %if.end83, !dbg !1074

if.then69:                                        ; preds = %for.end
  %63 = load i64, i64* %sum, align 8, !dbg !1075
  %64 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1077
  %samples70 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %64, i32 0, i32 5, !dbg !1078
  %65 = load i32, i32* %samples70, align 4, !dbg !1078
  %conv71 = zext i32 %65 to i64, !dbg !1077
  %div = udiv i64 %63, %conv71, !dbg !1079
  %conv72 = trunc i64 %div to i32, !dbg !1075
  %66 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1080
  %avg73 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %66, i32 0, i32 1, !dbg !1081
  store i32 %conv72, i32* %avg73, align 4, !dbg !1082
  %call74 = call i64 @time(i64* null) #8, !dbg !1083
  %67 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1084
  %period75 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %67, i32 0, i32 6, !dbg !1085
  %68 = load i64, i64* %period75, align 8, !dbg !1085
  %sub = sub nsw i64 %call74, %68, !dbg !1086
  %69 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1087
  %period76 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %69, i32 0, i32 6, !dbg !1088
  store i64 %sub, i64* %period76, align 8, !dbg !1089
  %70 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1090
  %period77 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %70, i32 0, i32 6, !dbg !1092
  %71 = load i64, i64* %period77, align 8, !dbg !1092
  %cmp78 = icmp eq i64 %71, 0, !dbg !1093
  br i1 %cmp78, label %if.then80, label %if.end82, !dbg !1094

if.then80:                                        ; preds = %if.then69
  %72 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1095
  %period81 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %72, i32 0, i32 6, !dbg !1096
  store i64 1, i64* %period81, align 8, !dbg !1097
  br label %if.end82, !dbg !1095

if.end82:                                         ; preds = %if.then80, %if.then69
  br label %if.end83, !dbg !1098

if.end83:                                         ; preds = %if.end82, %for.end
  store i64 0, i64* %sum, align 8, !dbg !1099
  store i32 0, i32* %j, align 4, !dbg !1100
  br label %for.cond84, !dbg !1102

for.cond84:                                       ; preds = %for.inc110, %if.end83
  %73 = load i32, i32* %j, align 4, !dbg !1103
  %cmp85 = icmp slt i32 %73, 160, !dbg !1105
  br i1 %cmp85, label %for.body87, label %for.end112, !dbg !1106

for.body87:                                       ; preds = %for.cond84
  call void @llvm.dbg.declare(metadata i64* %delta, metadata !1107, metadata !DIExpression()), !dbg !1109
  %74 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !1110
  %samples88 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %74, i32 0, i32 2, !dbg !1112
  %75 = load i32, i32* %j, align 4, !dbg !1113
  %idxprom89 = sext i32 %75 to i64, !dbg !1110
  %arrayidx90 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples88, i64 0, i64 %idxprom89, !dbg !1110
  %time91 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx90, i32 0, i32 0, !dbg !1114
  %76 = load i32, i32* %time91, align 4, !dbg !1114
  %cmp92 = icmp eq i32 %76, 0, !dbg !1115
  br i1 %cmp92, label %if.then94, label %if.end95, !dbg !1116

if.then94:                                        ; preds = %for.body87
  br label %for.inc110, !dbg !1117

if.end95:                                         ; preds = %for.body87
  %77 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1118
  %avg96 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %77, i32 0, i32 1, !dbg !1119
  %78 = load i32, i32* %avg96, align 4, !dbg !1119
  %conv97 = zext i32 %78 to i64, !dbg !1120
  %79 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !1121
  %samples98 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %79, i32 0, i32 2, !dbg !1122
  %80 = load i32, i32* %j, align 4, !dbg !1123
  %idxprom99 = sext i32 %80 to i64, !dbg !1121
  %arrayidx100 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples98, i64 0, i64 %idxprom99, !dbg !1121
  %latency101 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx100, i32 0, i32 1, !dbg !1124
  %81 = load i32, i32* %latency101, align 4, !dbg !1124
  %conv102 = zext i32 %81 to i64, !dbg !1121
  %sub103 = sub nsw i64 %conv97, %conv102, !dbg !1125
  store i64 %sub103, i64* %delta, align 8, !dbg !1126
  %82 = load i64, i64* %delta, align 8, !dbg !1127
  %cmp104 = icmp slt i64 %82, 0, !dbg !1129
  br i1 %cmp104, label %if.then106, label %if.end108, !dbg !1130

if.then106:                                       ; preds = %if.end95
  %83 = load i64, i64* %delta, align 8, !dbg !1131
  %sub107 = sub nsw i64 0, %83, !dbg !1132
  store i64 %sub107, i64* %delta, align 8, !dbg !1133
  br label %if.end108, !dbg !1134

if.end108:                                        ; preds = %if.then106, %if.end95
  %84 = load i64, i64* %delta, align 8, !dbg !1135
  %85 = load i64, i64* %sum, align 8, !dbg !1136
  %add109 = add i64 %85, %84, !dbg !1136
  store i64 %add109, i64* %sum, align 8, !dbg !1136
  br label %for.inc110, !dbg !1137

for.inc110:                                       ; preds = %if.end108, %if.then94
  %86 = load i32, i32* %j, align 4, !dbg !1138
  %inc111 = add nsw i32 %86, 1, !dbg !1138
  store i32 %inc111, i32* %j, align 4, !dbg !1138
  br label %for.cond84, !dbg !1139, !llvm.loop !1140

for.end112:                                       ; preds = %for.cond84
  %87 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1142
  %samples113 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %87, i32 0, i32 5, !dbg !1144
  %88 = load i32, i32* %samples113, align 4, !dbg !1144
  %tobool114 = icmp ne i32 %88, 0, !dbg !1142
  br i1 %tobool114, label %if.then115, label %if.end121, !dbg !1145

if.then115:                                       ; preds = %for.end112
  %89 = load i64, i64* %sum, align 8, !dbg !1146
  %90 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1147
  %samples116 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %90, i32 0, i32 5, !dbg !1148
  %91 = load i32, i32* %samples116, align 4, !dbg !1148
  %conv117 = zext i32 %91 to i64, !dbg !1147
  %div118 = udiv i64 %89, %conv117, !dbg !1149
  %conv119 = trunc i64 %div118 to i32, !dbg !1146
  %92 = load %struct.latencyStats*, %struct.latencyStats** %ls.addr, align 8, !dbg !1150
  %mad120 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %92, i32 0, i32 4, !dbg !1151
  store i32 %conv119, i32* %mad120, align 8, !dbg !1152
  br label %if.end121, !dbg !1150

if.end121:                                        ; preds = %if.then, %if.then115, %for.end112
  ret void, !dbg !1153
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @createLatencyReport() #0 !dbg !1154 {
entry:
  %retval = alloca i8*, align 8
  %report = alloca i8*, align 8
  %advise_better_vm = alloca i32, align 4
  %advise_slowlog_enabled = alloca i32, align 4
  %advise_slowlog_tuning = alloca i32, align 4
  %advise_slowlog_inspect = alloca i32, align 4
  %advise_disk_contention = alloca i32, align 4
  %advise_scheduler = alloca i32, align 4
  %advise_data_writeback = alloca i32, align 4
  %advise_no_appendfsync = alloca i32, align 4
  %advise_local_disk = alloca i32, align 4
  %advise_ssd = alloca i32, align 4
  %advise_write_load_info = alloca i32, align 4
  %advise_hz = alloca i32, align 4
  %advise_large_objects = alloca i32, align 4
  %advise_mass_eviction = alloca i32, align 4
  %advise_relax_fsync_policy = alloca i32, align 4
  %advise_disable_thp = alloca i32, align 4
  %advices = alloca i32, align 4
  %di = alloca %struct.dictIterator*, align 8
  %de = alloca %struct.dictEntry*, align 8
  %eventnum = alloca i32, align 4
  %event = alloca i8*, align 8
  %ts = alloca %struct.latencyTimeSeries*, align 8
  %ls = alloca %struct.latencyStats, align 8
  %fork_quality = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %report, metadata !1157, metadata !DIExpression()), !dbg !1158
  %call = call i8* @sdsempty(), !dbg !1159
  store i8* %call, i8** %report, align 8, !dbg !1158
  call void @llvm.dbg.declare(metadata i32* %advise_better_vm, metadata !1160, metadata !DIExpression()), !dbg !1161
  store i32 0, i32* %advise_better_vm, align 4, !dbg !1161
  call void @llvm.dbg.declare(metadata i32* %advise_slowlog_enabled, metadata !1162, metadata !DIExpression()), !dbg !1163
  store i32 0, i32* %advise_slowlog_enabled, align 4, !dbg !1163
  call void @llvm.dbg.declare(metadata i32* %advise_slowlog_tuning, metadata !1164, metadata !DIExpression()), !dbg !1165
  store i32 0, i32* %advise_slowlog_tuning, align 4, !dbg !1165
  call void @llvm.dbg.declare(metadata i32* %advise_slowlog_inspect, metadata !1166, metadata !DIExpression()), !dbg !1167
  store i32 0, i32* %advise_slowlog_inspect, align 4, !dbg !1167
  call void @llvm.dbg.declare(metadata i32* %advise_disk_contention, metadata !1168, metadata !DIExpression()), !dbg !1169
  store i32 0, i32* %advise_disk_contention, align 4, !dbg !1169
  call void @llvm.dbg.declare(metadata i32* %advise_scheduler, metadata !1170, metadata !DIExpression()), !dbg !1171
  store i32 0, i32* %advise_scheduler, align 4, !dbg !1171
  call void @llvm.dbg.declare(metadata i32* %advise_data_writeback, metadata !1172, metadata !DIExpression()), !dbg !1173
  store i32 0, i32* %advise_data_writeback, align 4, !dbg !1173
  call void @llvm.dbg.declare(metadata i32* %advise_no_appendfsync, metadata !1174, metadata !DIExpression()), !dbg !1175
  store i32 0, i32* %advise_no_appendfsync, align 4, !dbg !1175
  call void @llvm.dbg.declare(metadata i32* %advise_local_disk, metadata !1176, metadata !DIExpression()), !dbg !1177
  store i32 0, i32* %advise_local_disk, align 4, !dbg !1177
  call void @llvm.dbg.declare(metadata i32* %advise_ssd, metadata !1178, metadata !DIExpression()), !dbg !1179
  store i32 0, i32* %advise_ssd, align 4, !dbg !1179
  call void @llvm.dbg.declare(metadata i32* %advise_write_load_info, metadata !1180, metadata !DIExpression()), !dbg !1181
  store i32 0, i32* %advise_write_load_info, align 4, !dbg !1181
  call void @llvm.dbg.declare(metadata i32* %advise_hz, metadata !1182, metadata !DIExpression()), !dbg !1183
  store i32 0, i32* %advise_hz, align 4, !dbg !1183
  call void @llvm.dbg.declare(metadata i32* %advise_large_objects, metadata !1184, metadata !DIExpression()), !dbg !1185
  store i32 0, i32* %advise_large_objects, align 4, !dbg !1185
  call void @llvm.dbg.declare(metadata i32* %advise_mass_eviction, metadata !1186, metadata !DIExpression()), !dbg !1187
  store i32 0, i32* %advise_mass_eviction, align 4, !dbg !1187
  call void @llvm.dbg.declare(metadata i32* %advise_relax_fsync_policy, metadata !1188, metadata !DIExpression()), !dbg !1189
  store i32 0, i32* %advise_relax_fsync_policy, align 4, !dbg !1189
  call void @llvm.dbg.declare(metadata i32* %advise_disable_thp, metadata !1190, metadata !DIExpression()), !dbg !1191
  store i32 0, i32* %advise_disable_thp, align 4, !dbg !1191
  call void @llvm.dbg.declare(metadata i32* %advices, metadata !1192, metadata !DIExpression()), !dbg !1193
  store i32 0, i32* %advices, align 4, !dbg !1193
  %0 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 383), align 8, !dbg !1194
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %0, i32 0, i32 2, !dbg !1194
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !1194
  %1 = load i64, i64* %arrayidx, align 8, !dbg !1194
  %2 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 383), align 8, !dbg !1194
  %ht_used1 = getelementptr inbounds %struct.dict, %struct.dict* %2, i32 0, i32 2, !dbg !1194
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used1, i64 0, i64 1, !dbg !1194
  %3 = load i64, i64* %arrayidx2, align 8, !dbg !1194
  %add = add i64 %1, %3, !dbg !1194
  %cmp = icmp eq i64 %add, 0, !dbg !1196
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1197

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !1198
  %cmp3 = icmp eq i64 %4, 0, !dbg !1199
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1200

if.then:                                          ; preds = %land.lhs.true
  %5 = load i8*, i8** %report, align 8, !dbg !1201
  %call4 = call i8* @sdscat(i8* %5, i8* getelementptr inbounds ([289 x i8], [289 x i8]* @.str.1, i64 0, i64 0)), !dbg !1203
  store i8* %call4, i8** %report, align 8, !dbg !1204
  %6 = load i8*, i8** %report, align 8, !dbg !1205
  store i8* %6, i8** %retval, align 8, !dbg !1206
  br label %return, !dbg !1206

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @llvm.dbg.declare(metadata %struct.dictIterator** %di, metadata !1207, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !1209, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.declare(metadata i32* %eventnum, metadata !1211, metadata !DIExpression()), !dbg !1212
  store i32 0, i32* %eventnum, align 4, !dbg !1212
  %7 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 383), align 8, !dbg !1213
  %call5 = call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %7), !dbg !1214
  store %struct.dictIterator* %call5, %struct.dictIterator** %di, align 8, !dbg !1215
  br label %while.cond, !dbg !1216

while.cond:                                       ; preds = %if.end112, %if.then9, %if.end
  %8 = load %struct.dictIterator*, %struct.dictIterator** %di, align 8, !dbg !1217
  %call6 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %8), !dbg !1218
  store %struct.dictEntry* %call6, %struct.dictEntry** %de, align 8, !dbg !1219
  %cmp7 = icmp ne %struct.dictEntry* %call6, null, !dbg !1220
  br i1 %cmp7, label %while.body, label %while.end, !dbg !1216

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %event, metadata !1221, metadata !DIExpression()), !dbg !1223
  %9 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1224
  %key = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %9, i32 0, i32 0, !dbg !1224
  %10 = load i8*, i8** %key, align 8, !dbg !1224
  store i8* %10, i8** %event, align 8, !dbg !1223
  call void @llvm.dbg.declare(metadata %struct.latencyTimeSeries** %ts, metadata !1225, metadata !DIExpression()), !dbg !1226
  %11 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1227
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %11, i32 0, i32 1, !dbg !1227
  %val = bitcast %union.anon* %v to i8**, !dbg !1227
  %12 = load i8*, i8** %val, align 8, !dbg !1227
  %13 = bitcast i8* %12 to %struct.latencyTimeSeries*, !dbg !1227
  store %struct.latencyTimeSeries* %13, %struct.latencyTimeSeries** %ts, align 8, !dbg !1226
  call void @llvm.dbg.declare(metadata %struct.latencyStats* %ls, metadata !1228, metadata !DIExpression()), !dbg !1229
  %14 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !1230
  %cmp8 = icmp eq %struct.latencyTimeSeries* %14, null, !dbg !1232
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1233

if.then9:                                         ; preds = %while.body
  br label %while.cond, !dbg !1234, !llvm.loop !1235

if.end10:                                         ; preds = %while.body
  %15 = load i32, i32* %eventnum, align 4, !dbg !1237
  %inc = add nsw i32 %15, 1, !dbg !1237
  store i32 %inc, i32* %eventnum, align 4, !dbg !1237
  %16 = load i32, i32* %eventnum, align 4, !dbg !1238
  %cmp11 = icmp eq i32 %16, 1, !dbg !1240
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !1241

if.then12:                                        ; preds = %if.end10
  %17 = load i8*, i8** %report, align 8, !dbg !1242
  %call13 = call i8* @sdscat(i8* %17, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0)), !dbg !1244
  store i8* %call13, i8** %report, align 8, !dbg !1245
  br label %if.end14, !dbg !1246

if.end14:                                         ; preds = %if.then12, %if.end10
  %18 = load i8*, i8** %event, align 8, !dbg !1247
  call void @analyzeLatencyForEvent(i8* %18, %struct.latencyStats* %ls), !dbg !1248
  %19 = load i8*, i8** %report, align 8, !dbg !1249
  %20 = load i32, i32* %eventnum, align 4, !dbg !1250
  %21 = load i8*, i8** %event, align 8, !dbg !1251
  %samples = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %ls, i32 0, i32 5, !dbg !1252
  %22 = load i32, i32* %samples, align 4, !dbg !1252
  %avg = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %ls, i32 0, i32 1, !dbg !1253
  %23 = load i32, i32* %avg, align 4, !dbg !1253
  %conv = zext i32 %23 to i64, !dbg !1254
  %mad = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %ls, i32 0, i32 4, !dbg !1255
  %24 = load i32, i32* %mad, align 8, !dbg !1255
  %conv15 = zext i32 %24 to i64, !dbg !1256
  %period = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %ls, i32 0, i32 6, !dbg !1257
  %25 = load i64, i64* %period, align 8, !dbg !1257
  %conv16 = sitofp i64 %25 to double, !dbg !1258
  %samples17 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %ls, i32 0, i32 5, !dbg !1259
  %26 = load i32, i32* %samples17, align 4, !dbg !1259
  %conv18 = uitofp i32 %26 to double, !dbg !1260
  %div = fdiv double %conv16, %conv18, !dbg !1261
  %27 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !1262
  %max = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %27, i32 0, i32 1, !dbg !1263
  %28 = load i32, i32* %max, align 4, !dbg !1263
  %conv19 = zext i32 %28 to i64, !dbg !1264
  %call20 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %19, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 %20, i8* %21, i32 %22, i64 %conv, i64 %conv15, double %div, i64 %conv19), !dbg !1265
  store i8* %call20, i8** %report, align 8, !dbg !1266
  %29 = load i8*, i8** %event, align 8, !dbg !1267
  %call21 = call i32 @strcasecmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !1269
  %tobool = icmp ne i32 %call21, 0, !dbg !1269
  br i1 %tobool, label %if.end40, label %if.then22, !dbg !1270

if.then22:                                        ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i8** %fork_quality, metadata !1271, metadata !DIExpression()), !dbg !1273
  %30 = load double, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 118), align 8, !dbg !1274
  %cmp23 = fcmp olt double %30, 1.000000e+01, !dbg !1276
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !1277

if.then25:                                        ; preds = %if.then22
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %fork_quality, align 8, !dbg !1278
  store i32 1, i32* %advise_better_vm, align 4, !dbg !1280
  %31 = load i32, i32* %advices, align 4, !dbg !1281
  %inc26 = add nsw i32 %31, 1, !dbg !1281
  store i32 %inc26, i32* %advices, align 4, !dbg !1281
  br label %if.end38, !dbg !1282

if.else:                                          ; preds = %if.then22
  %32 = load double, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 118), align 8, !dbg !1283
  %cmp27 = fcmp olt double %32, 2.500000e+01, !dbg !1285
  br i1 %cmp27, label %if.then29, label %if.else31, !dbg !1286

if.then29:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %fork_quality, align 8, !dbg !1287
  store i32 1, i32* %advise_better_vm, align 4, !dbg !1289
  %33 = load i32, i32* %advices, align 4, !dbg !1290
  %inc30 = add nsw i32 %33, 1, !dbg !1290
  store i32 %inc30, i32* %advices, align 4, !dbg !1290
  br label %if.end37, !dbg !1291

if.else31:                                        ; preds = %if.else
  %34 = load double, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 118), align 8, !dbg !1292
  %cmp32 = fcmp olt double %34, 1.000000e+02, !dbg !1294
  br i1 %cmp32, label %if.then34, label %if.else35, !dbg !1295

if.then34:                                        ; preds = %if.else31
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %fork_quality, align 8, !dbg !1296
  br label %if.end36, !dbg !1298

if.else35:                                        ; preds = %if.else31
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %fork_quality, align 8, !dbg !1299
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.then34
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then29
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then25
  %35 = load i8*, i8** %report, align 8, !dbg !1301
  %36 = load double, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 118), align 8, !dbg !1302
  %37 = load i8*, i8** %fork_quality, align 8, !dbg !1303
  %call39 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), double %36, i8* %37), !dbg !1304
  store i8* %call39, i8** %report, align 8, !dbg !1305
  br label %if.end40, !dbg !1306

if.end40:                                         ; preds = %if.end38, %if.end14
  %38 = load i8*, i8** %event, align 8, !dbg !1307
  %call41 = call i32 @strcasecmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !1309
  %tobool42 = icmp ne i32 %call41, 0, !dbg !1309
  br i1 %tobool42, label %if.end57, label %if.then43, !dbg !1310

if.then43:                                        ; preds = %if.end40
  %39 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 126), align 8, !dbg !1311
  %cmp44 = icmp slt i64 %39, 0, !dbg !1314
  br i1 %cmp44, label %if.then46, label %if.else48, !dbg !1315

if.then46:                                        ; preds = %if.then43
  store i32 1, i32* %advise_slowlog_enabled, align 4, !dbg !1316
  %40 = load i32, i32* %advices, align 4, !dbg !1318
  %inc47 = add nsw i32 %40, 1, !dbg !1318
  store i32 %inc47, i32* %advices, align 4, !dbg !1318
  br label %if.end55, !dbg !1319

if.else48:                                        ; preds = %if.then43
  %41 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 126), align 8, !dbg !1320
  %div49 = sdiv i64 %41, 1000, !dbg !1322
  %42 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !1323
  %cmp50 = icmp sgt i64 %div49, %42, !dbg !1324
  br i1 %cmp50, label %if.then52, label %if.end54, !dbg !1325

if.then52:                                        ; preds = %if.else48
  store i32 1, i32* %advise_slowlog_tuning, align 4, !dbg !1326
  %43 = load i32, i32* %advices, align 4, !dbg !1328
  %inc53 = add nsw i32 %43, 1, !dbg !1328
  store i32 %inc53, i32* %advices, align 4, !dbg !1328
  br label %if.end54, !dbg !1329

if.end54:                                         ; preds = %if.then52, %if.else48
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then46
  store i32 1, i32* %advise_slowlog_inspect, align 4, !dbg !1330
  store i32 1, i32* %advise_large_objects, align 4, !dbg !1331
  %44 = load i32, i32* %advices, align 4, !dbg !1332
  %add56 = add nsw i32 %44, 2, !dbg !1332
  store i32 %add56, i32* %advices, align 4, !dbg !1332
  br label %if.end57, !dbg !1333

if.end57:                                         ; preds = %if.end55, %if.end40
  %45 = load i8*, i8** %event, align 8, !dbg !1334
  %call58 = call i32 @strcasecmp(i8* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !1336
  %tobool59 = icmp ne i32 %call58, 0, !dbg !1336
  br i1 %tobool59, label %if.end62, label %if.then60, !dbg !1337

if.then60:                                        ; preds = %if.end57
  store i32 1, i32* %advise_scheduler, align 4, !dbg !1338
  %46 = load i32, i32* %advices, align 4, !dbg !1340
  %inc61 = add nsw i32 %46, 1, !dbg !1340
  store i32 %inc61, i32* %advices, align 4, !dbg !1340
  br label %if.end62, !dbg !1341

if.end62:                                         ; preds = %if.then60, %if.end57
  %47 = load i8*, i8** %event, align 8, !dbg !1342
  %call63 = call i32 @strcasecmp(i8* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !1344
  %tobool64 = icmp ne i32 %call63, 0, !dbg !1344
  br i1 %tobool64, label %if.end67, label %if.then65, !dbg !1345

if.then65:                                        ; preds = %if.end62
  store i32 1, i32* %advise_local_disk, align 4, !dbg !1346
  store i32 1, i32* %advise_disk_contention, align 4, !dbg !1348
  store i32 1, i32* %advise_ssd, align 4, !dbg !1349
  store i32 1, i32* %advise_data_writeback, align 4, !dbg !1350
  %48 = load i32, i32* %advices, align 4, !dbg !1351
  %add66 = add nsw i32 %48, 4, !dbg !1351
  store i32 %add66, i32* %advices, align 4, !dbg !1351
  br label %if.end67, !dbg !1352

if.end67:                                         ; preds = %if.then65, %if.end62
  %49 = load i8*, i8** %event, align 8, !dbg !1353
  %call68 = call i32 @strcasecmp(i8* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !1355
  %tobool69 = icmp ne i32 %call68, 0, !dbg !1355
  br i1 %tobool69, label %if.end72, label %if.then70, !dbg !1356

if.then70:                                        ; preds = %if.end67
  store i32 1, i32* %advise_no_appendfsync, align 4, !dbg !1357
  store i32 1, i32* %advise_data_writeback, align 4, !dbg !1359
  store i32 1, i32* %advise_ssd, align 4, !dbg !1360
  %50 = load i32, i32* %advices, align 4, !dbg !1361
  %add71 = add nsw i32 %50, 3, !dbg !1361
  store i32 %add71, i32* %advices, align 4, !dbg !1361
  br label %if.end72, !dbg !1362

if.end72:                                         ; preds = %if.then70, %if.end67
  %51 = load i8*, i8** %event, align 8, !dbg !1363
  %call73 = call i32 @strcasecmp(i8* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !1365
  %tobool74 = icmp ne i32 %call73, 0, !dbg !1365
  br i1 %tobool74, label %if.end77, label %if.then75, !dbg !1366

if.then75:                                        ; preds = %if.end72
  store i32 1, i32* %advise_local_disk, align 4, !dbg !1367
  store i32 1, i32* %advise_data_writeback, align 4, !dbg !1369
  store i32 1, i32* %advise_ssd, align 4, !dbg !1370
  %52 = load i32, i32* %advices, align 4, !dbg !1371
  %add76 = add nsw i32 %52, 3, !dbg !1371
  store i32 %add76, i32* %advices, align 4, !dbg !1371
  br label %if.end77, !dbg !1372

if.end77:                                         ; preds = %if.then75, %if.end72
  %53 = load i8*, i8** %event, align 8, !dbg !1373
  %call78 = call i32 @strcasecmp(i8* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !1375
  %tobool79 = icmp ne i32 %call78, 0, !dbg !1375
  br i1 %tobool79, label %if.end82, label %if.then80, !dbg !1376

if.then80:                                        ; preds = %if.end77
  store i32 1, i32* %advise_relax_fsync_policy, align 4, !dbg !1377
  %54 = load i32, i32* %advices, align 4, !dbg !1379
  %inc81 = add nsw i32 %54, 1, !dbg !1379
  store i32 %inc81, i32* %advices, align 4, !dbg !1379
  br label %if.end82, !dbg !1380

if.end82:                                         ; preds = %if.then80, %if.end77
  %55 = load i8*, i8** %event, align 8, !dbg !1381
  %call83 = call i32 @strcasecmp(i8* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !1383
  %tobool84 = icmp ne i32 %call83, 0, !dbg !1383
  br i1 %tobool84, label %lor.lhs.false, label %if.then87, !dbg !1384

lor.lhs.false:                                    ; preds = %if.end82
  %56 = load i8*, i8** %event, align 8, !dbg !1385
  %call85 = call i32 @strcasecmp(i8* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !1386
  %tobool86 = icmp ne i32 %call85, 0, !dbg !1386
  br i1 %tobool86, label %if.end89, label %if.then87, !dbg !1387

if.then87:                                        ; preds = %lor.lhs.false, %if.end82
  store i32 1, i32* %advise_disk_contention, align 4, !dbg !1388
  store i32 1, i32* %advise_local_disk, align 4, !dbg !1390
  %57 = load i32, i32* %advices, align 4, !dbg !1391
  %add88 = add nsw i32 %57, 2, !dbg !1391
  store i32 %add88, i32* %advices, align 4, !dbg !1391
  br label %if.end89, !dbg !1392

if.end89:                                         ; preds = %if.then87, %lor.lhs.false
  %58 = load i8*, i8** %event, align 8, !dbg !1393
  %call90 = call i32 @strcasecmp(i8* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !1395
  %tobool91 = icmp ne i32 %call90, 0, !dbg !1395
  br i1 %tobool91, label %lor.lhs.false92, label %if.then95, !dbg !1396

lor.lhs.false92:                                  ; preds = %if.end89
  %59 = load i8*, i8** %event, align 8, !dbg !1397
  %call93 = call i32 @strcasecmp(i8* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !1398
  %tobool94 = icmp ne i32 %call93, 0, !dbg !1398
  br i1 %tobool94, label %if.end97, label %if.then95, !dbg !1399

if.then95:                                        ; preds = %lor.lhs.false92, %if.end89
  store i32 1, i32* %advise_write_load_info, align 4, !dbg !1400
  store i32 1, i32* %advise_data_writeback, align 4, !dbg !1402
  store i32 1, i32* %advise_ssd, align 4, !dbg !1403
  store i32 1, i32* %advise_local_disk, align 4, !dbg !1404
  %60 = load i32, i32* %advices, align 4, !dbg !1405
  %add96 = add nsw i32 %60, 4, !dbg !1405
  store i32 %add96, i32* %advices, align 4, !dbg !1405
  br label %if.end97, !dbg !1406

if.end97:                                         ; preds = %if.then95, %lor.lhs.false92
  %61 = load i8*, i8** %event, align 8, !dbg !1407
  %call98 = call i32 @strcasecmp(i8* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !1409
  %tobool99 = icmp ne i32 %call98, 0, !dbg !1409
  br i1 %tobool99, label %if.end102, label %if.then100, !dbg !1410

if.then100:                                       ; preds = %if.end97
  store i32 1, i32* %advise_hz, align 4, !dbg !1411
  store i32 1, i32* %advise_large_objects, align 4, !dbg !1413
  %62 = load i32, i32* %advices, align 4, !dbg !1414
  %add101 = add nsw i32 %62, 2, !dbg !1414
  store i32 %add101, i32* %advices, align 4, !dbg !1414
  br label %if.end102, !dbg !1415

if.end102:                                        ; preds = %if.then100, %if.end97
  %63 = load i8*, i8** %event, align 8, !dbg !1416
  %call103 = call i32 @strcasecmp(i8* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !1418
  %tobool104 = icmp ne i32 %call103, 0, !dbg !1418
  br i1 %tobool104, label %if.end107, label %if.then105, !dbg !1419

if.then105:                                       ; preds = %if.end102
  store i32 1, i32* %advise_large_objects, align 4, !dbg !1420
  %64 = load i32, i32* %advices, align 4, !dbg !1422
  %inc106 = add nsw i32 %64, 1, !dbg !1422
  store i32 %inc106, i32* %advices, align 4, !dbg !1422
  br label %if.end107, !dbg !1423

if.end107:                                        ; preds = %if.then105, %if.end102
  %65 = load i8*, i8** %event, align 8, !dbg !1424
  %call108 = call i32 @strcasecmp(i8* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !1426
  %tobool109 = icmp ne i32 %call108, 0, !dbg !1426
  br i1 %tobool109, label %if.end112, label %if.then110, !dbg !1427

if.then110:                                       ; preds = %if.end107
  store i32 1, i32* %advise_mass_eviction, align 4, !dbg !1428
  %66 = load i32, i32* %advices, align 4, !dbg !1430
  %inc111 = add nsw i32 %66, 1, !dbg !1430
  store i32 %inc111, i32* %advices, align 4, !dbg !1430
  br label %if.end112, !dbg !1431

if.end112:                                        ; preds = %if.then110, %if.end107
  %67 = load i8*, i8** %report, align 8, !dbg !1432
  %call113 = call i8* @sdscatlen(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1), !dbg !1433
  store i8* %call113, i8** %report, align 8, !dbg !1434
  br label %while.cond, !dbg !1216, !llvm.loop !1235

while.end:                                        ; preds = %while.cond
  %68 = load %struct.dictIterator*, %struct.dictIterator** %di, align 8, !dbg !1435
  call void @dictReleaseIterator(%struct.dictIterator* %68), !dbg !1436
  %call114 = call i32 @THPGetAnonHugePagesSize(), !dbg !1437
  %cmp115 = icmp sgt i32 %call114, 0, !dbg !1439
  br i1 %cmp115, label %if.then117, label %if.end119, !dbg !1440

if.then117:                                       ; preds = %while.end
  store i32 1, i32* %advise_disable_thp, align 4, !dbg !1441
  %69 = load i32, i32* %advices, align 4, !dbg !1443
  %inc118 = add nsw i32 %69, 1, !dbg !1443
  store i32 %inc118, i32* %advices, align 4, !dbg !1443
  br label %if.end119, !dbg !1444

if.end119:                                        ; preds = %if.then117, %while.end
  %70 = load i32, i32* %eventnum, align 4, !dbg !1445
  %cmp120 = icmp eq i32 %70, 0, !dbg !1447
  br i1 %cmp120, label %land.lhs.true122, label %if.else127, !dbg !1448

land.lhs.true122:                                 ; preds = %if.end119
  %71 = load i32, i32* %advices, align 4, !dbg !1449
  %cmp123 = icmp eq i32 %71, 0, !dbg !1450
  br i1 %cmp123, label %if.then125, label %if.else127, !dbg !1451

if.then125:                                       ; preds = %land.lhs.true122
  %72 = load i8*, i8** %report, align 8, !dbg !1452
  %call126 = call i8* @sdscat(i8* %72, i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.24, i64 0, i64 0)), !dbg !1454
  store i8* %call126, i8** %report, align 8, !dbg !1455
  br label %if.end209, !dbg !1456

if.else127:                                       ; preds = %land.lhs.true122, %if.end119
  %73 = load i32, i32* %eventnum, align 4, !dbg !1457
  %cmp128 = icmp sgt i32 %73, 0, !dbg !1459
  br i1 %cmp128, label %land.lhs.true130, label %if.else135, !dbg !1460

land.lhs.true130:                                 ; preds = %if.else127
  %74 = load i32, i32* %advices, align 4, !dbg !1461
  %cmp131 = icmp eq i32 %74, 0, !dbg !1462
  br i1 %cmp131, label %if.then133, label %if.else135, !dbg !1463

if.then133:                                       ; preds = %land.lhs.true130
  %75 = load i8*, i8** %report, align 8, !dbg !1464
  %call134 = call i8* @sdscat(i8* %75, i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.25, i64 0, i64 0)), !dbg !1466
  store i8* %call134, i8** %report, align 8, !dbg !1467
  br label %if.end208, !dbg !1468

if.else135:                                       ; preds = %land.lhs.true130, %if.else127
  %76 = load i8*, i8** %report, align 8, !dbg !1469
  %call136 = call i8* @sdscat(i8* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0)), !dbg !1471
  store i8* %call136, i8** %report, align 8, !dbg !1472
  %77 = load i32, i32* %advise_better_vm, align 4, !dbg !1473
  %tobool137 = icmp ne i32 %77, 0, !dbg !1473
  br i1 %tobool137, label %if.then138, label %if.end140, !dbg !1475

if.then138:                                       ; preds = %if.else135
  %78 = load i8*, i8** %report, align 8, !dbg !1476
  %call139 = call i8* @sdscat(i8* %78, i8* getelementptr inbounds ([302 x i8], [302 x i8]* @.str.27, i64 0, i64 0)), !dbg !1478
  store i8* %call139, i8** %report, align 8, !dbg !1479
  br label %if.end140, !dbg !1480

if.end140:                                        ; preds = %if.then138, %if.else135
  %79 = load i32, i32* %advise_slowlog_enabled, align 4, !dbg !1481
  %tobool141 = icmp ne i32 %79, 0, !dbg !1481
  br i1 %tobool141, label %if.then142, label %if.end144, !dbg !1483

if.then142:                                       ; preds = %if.end140
  %80 = load i8*, i8** %report, align 8, !dbg !1484
  %81 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !1486
  %mul = mul i64 %81, 1000, !dbg !1487
  %call143 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %80, i8* getelementptr inbounds ([262 x i8], [262 x i8]* @.str.28, i64 0, i64 0), i64 %mul), !dbg !1488
  store i8* %call143, i8** %report, align 8, !dbg !1489
  br label %if.end144, !dbg !1490

if.end144:                                        ; preds = %if.then142, %if.end140
  %82 = load i32, i32* %advise_slowlog_tuning, align 4, !dbg !1491
  %tobool145 = icmp ne i32 %82, 0, !dbg !1491
  br i1 %tobool145, label %if.then146, label %if.end149, !dbg !1493

if.then146:                                       ; preds = %if.end144
  %83 = load i8*, i8** %report, align 8, !dbg !1494
  %84 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !1496
  %mul147 = mul i64 %84, 1000, !dbg !1497
  %call148 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %83, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.29, i64 0, i64 0), i64 %mul147), !dbg !1498
  store i8* %call148, i8** %report, align 8, !dbg !1499
  br label %if.end149, !dbg !1500

if.end149:                                        ; preds = %if.then146, %if.end144
  %85 = load i32, i32* %advise_slowlog_inspect, align 4, !dbg !1501
  %tobool150 = icmp ne i32 %85, 0, !dbg !1501
  br i1 %tobool150, label %if.then151, label %if.end153, !dbg !1503

if.then151:                                       ; preds = %if.end149
  %86 = load i8*, i8** %report, align 8, !dbg !1504
  %call152 = call i8* @sdscat(i8* %86, i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.30, i64 0, i64 0)), !dbg !1506
  store i8* %call152, i8** %report, align 8, !dbg !1507
  br label %if.end153, !dbg !1508

if.end153:                                        ; preds = %if.then151, %if.end149
  %87 = load i32, i32* %advise_scheduler, align 4, !dbg !1509
  %tobool154 = icmp ne i32 %87, 0, !dbg !1509
  br i1 %tobool154, label %if.then155, label %if.end157, !dbg !1511

if.then155:                                       ; preds = %if.end153
  %88 = load i8*, i8** %report, align 8, !dbg !1512
  %call156 = call i8* @sdscat(i8* %88, i8* getelementptr inbounds ([618 x i8], [618 x i8]* @.str.31, i64 0, i64 0)), !dbg !1514
  store i8* %call156, i8** %report, align 8, !dbg !1515
  br label %if.end157, !dbg !1516

if.end157:                                        ; preds = %if.then155, %if.end153
  %89 = load i32, i32* %advise_local_disk, align 4, !dbg !1517
  %tobool158 = icmp ne i32 %89, 0, !dbg !1517
  br i1 %tobool158, label %if.then159, label %if.end161, !dbg !1519

if.then159:                                       ; preds = %if.end157
  %90 = load i8*, i8** %report, align 8, !dbg !1520
  %call160 = call i8* @sdscat(i8* %90, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.32, i64 0, i64 0)), !dbg !1522
  store i8* %call160, i8** %report, align 8, !dbg !1523
  br label %if.end161, !dbg !1524

if.end161:                                        ; preds = %if.then159, %if.end157
  %91 = load i32, i32* %advise_ssd, align 4, !dbg !1525
  %tobool162 = icmp ne i32 %91, 0, !dbg !1525
  br i1 %tobool162, label %if.then163, label %if.end165, !dbg !1527

if.then163:                                       ; preds = %if.end161
  %92 = load i8*, i8** %report, align 8, !dbg !1528
  %call164 = call i8* @sdscat(i8* %92, i8* getelementptr inbounds ([317 x i8], [317 x i8]* @.str.33, i64 0, i64 0)), !dbg !1530
  store i8* %call164, i8** %report, align 8, !dbg !1531
  br label %if.end165, !dbg !1532

if.end165:                                        ; preds = %if.then163, %if.end161
  %93 = load i32, i32* %advise_data_writeback, align 4, !dbg !1533
  %tobool166 = icmp ne i32 %93, 0, !dbg !1533
  br i1 %tobool166, label %if.then167, label %if.end169, !dbg !1535

if.then167:                                       ; preds = %if.end165
  %94 = load i8*, i8** %report, align 8, !dbg !1536
  %call168 = call i8* @sdscat(i8* %94, i8* getelementptr inbounds ([330 x i8], [330 x i8]* @.str.34, i64 0, i64 0)), !dbg !1538
  store i8* %call168, i8** %report, align 8, !dbg !1539
  br label %if.end169, !dbg !1540

if.end169:                                        ; preds = %if.then167, %if.end165
  %95 = load i32, i32* %advise_disk_contention, align 4, !dbg !1541
  %tobool170 = icmp ne i32 %95, 0, !dbg !1541
  br i1 %tobool170, label %if.then171, label %if.end173, !dbg !1543

if.then171:                                       ; preds = %if.end169
  %96 = load i8*, i8** %report, align 8, !dbg !1544
  %call172 = call i8* @sdscat(i8* %96, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.35, i64 0, i64 0)), !dbg !1546
  store i8* %call172, i8** %report, align 8, !dbg !1547
  br label %if.end173, !dbg !1548

if.end173:                                        ; preds = %if.then171, %if.end169
  %97 = load i32, i32* %advise_no_appendfsync, align 4, !dbg !1549
  %tobool174 = icmp ne i32 %97, 0, !dbg !1549
  br i1 %tobool174, label %if.then175, label %if.end177, !dbg !1551

if.then175:                                       ; preds = %if.end173
  %98 = load i8*, i8** %report, align 8, !dbg !1552
  %call176 = call i8* @sdscat(i8* %98, i8* getelementptr inbounds ([307 x i8], [307 x i8]* @.str.36, i64 0, i64 0)), !dbg !1554
  store i8* %call176, i8** %report, align 8, !dbg !1555
  br label %if.end177, !dbg !1556

if.end177:                                        ; preds = %if.then175, %if.end173
  %99 = load i32, i32* %advise_relax_fsync_policy, align 4, !dbg !1557
  %tobool178 = icmp ne i32 %99, 0, !dbg !1557
  br i1 %tobool178, label %land.lhs.true179, label %if.end184, !dbg !1559

land.lhs.true179:                                 ; preds = %if.end177
  %100 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 183), align 4, !dbg !1560
  %cmp180 = icmp eq i32 %100, 1, !dbg !1561
  br i1 %cmp180, label %if.then182, label %if.end184, !dbg !1562

if.then182:                                       ; preds = %land.lhs.true179
  %101 = load i8*, i8** %report, align 8, !dbg !1563
  %call183 = call i8* @sdscat(i8* %101, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.37, i64 0, i64 0)), !dbg !1565
  store i8* %call183, i8** %report, align 8, !dbg !1566
  br label %if.end184, !dbg !1567

if.end184:                                        ; preds = %if.then182, %land.lhs.true179, %if.end177
  %102 = load i32, i32* %advise_write_load_info, align 4, !dbg !1568
  %tobool185 = icmp ne i32 %102, 0, !dbg !1568
  br i1 %tobool185, label %if.then186, label %if.end188, !dbg !1570

if.then186:                                       ; preds = %if.end184
  %103 = load i8*, i8** %report, align 8, !dbg !1571
  %call187 = call i8* @sdscat(i8* %103, i8* getelementptr inbounds ([363 x i8], [363 x i8]* @.str.38, i64 0, i64 0)), !dbg !1573
  store i8* %call187, i8** %report, align 8, !dbg !1574
  br label %if.end188, !dbg !1575

if.end188:                                        ; preds = %if.then186, %if.end184
  %104 = load i32, i32* %advise_hz, align 4, !dbg !1576
  %tobool189 = icmp ne i32 %104, 0, !dbg !1576
  br i1 %tobool189, label %land.lhs.true190, label %if.end195, !dbg !1578

land.lhs.true190:                                 ; preds = %if.end188
  %105 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 8), align 4, !dbg !1579
  %cmp191 = icmp slt i32 %105, 100, !dbg !1580
  br i1 %cmp191, label %if.then193, label %if.end195, !dbg !1581

if.then193:                                       ; preds = %land.lhs.true190
  %106 = load i8*, i8** %report, align 8, !dbg !1582
  %call194 = call i8* @sdscat(i8* %106, i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.39, i64 0, i64 0)), !dbg !1584
  store i8* %call194, i8** %report, align 8, !dbg !1585
  br label %if.end195, !dbg !1586

if.end195:                                        ; preds = %if.then193, %land.lhs.true190, %if.end188
  %107 = load i32, i32* %advise_large_objects, align 4, !dbg !1587
  %tobool196 = icmp ne i32 %107, 0, !dbg !1587
  br i1 %tobool196, label %if.then197, label %if.end199, !dbg !1589

if.then197:                                       ; preds = %if.end195
  %108 = load i8*, i8** %report, align 8, !dbg !1590
  %call198 = call i8* @sdscat(i8* %108, i8* getelementptr inbounds ([240 x i8], [240 x i8]* @.str.40, i64 0, i64 0)), !dbg !1592
  store i8* %call198, i8** %report, align 8, !dbg !1593
  br label %if.end199, !dbg !1594

if.end199:                                        ; preds = %if.then197, %if.end195
  %109 = load i32, i32* %advise_mass_eviction, align 4, !dbg !1595
  %tobool200 = icmp ne i32 %109, 0, !dbg !1595
  br i1 %tobool200, label %if.then201, label %if.end203, !dbg !1597

if.then201:                                       ; preds = %if.end199
  %110 = load i8*, i8** %report, align 8, !dbg !1598
  %call202 = call i8* @sdscat(i8* %110, i8* getelementptr inbounds ([295 x i8], [295 x i8]* @.str.41, i64 0, i64 0)), !dbg !1600
  store i8* %call202, i8** %report, align 8, !dbg !1601
  br label %if.end203, !dbg !1602

if.end203:                                        ; preds = %if.then201, %if.end199
  %111 = load i32, i32* %advise_disable_thp, align 4, !dbg !1603
  %tobool204 = icmp ne i32 %111, 0, !dbg !1603
  br i1 %tobool204, label %if.then205, label %if.end207, !dbg !1605

if.then205:                                       ; preds = %if.end203
  %112 = load i8*, i8** %report, align 8, !dbg !1606
  %call206 = call i8* @sdscat(i8* %112, i8* getelementptr inbounds ([530 x i8], [530 x i8]* @.str.42, i64 0, i64 0)), !dbg !1608
  store i8* %call206, i8** %report, align 8, !dbg !1609
  br label %if.end207, !dbg !1610

if.end207:                                        ; preds = %if.then205, %if.end203
  br label %if.end208

if.end208:                                        ; preds = %if.end207, %if.then133
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %if.then125
  %113 = load i8*, i8** %report, align 8, !dbg !1611
  store i8* %113, i8** %retval, align 8, !dbg !1612
  br label %return, !dbg !1612

return:                                           ; preds = %if.end209, %if.then
  %114 = load i8*, i8** %retval, align 8, !dbg !1613
  ret i8* %114, !dbg !1613
}

declare dso_local i8* @sdsempty() #3

declare dso_local i8* @sdscat(i8*, i8*) #3

declare dso_local i8* @sdscatprintf(i8*, i8*, ...) #3

declare dso_local i8* @sdscatlen(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @fillCommandCDF(%struct.client* %c, %struct.hdr_histogram* %histogram) #0 !dbg !1614 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %histogram.addr = alloca %struct.hdr_histogram*, align 8
  %replylen = alloca i8*, align 8
  %samples = alloca i32, align 4
  %iter = alloca %struct.hdr_iter, align 8
  %previous_count = alloca i64, align 8
  %micros = alloca i64, align 8
  %cumulative_count = alloca i64, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1617, metadata !DIExpression()), !dbg !1618
  store %struct.hdr_histogram* %histogram, %struct.hdr_histogram** %histogram.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdr_histogram** %histogram.addr, metadata !1619, metadata !DIExpression()), !dbg !1620
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1621
  call void @addReplyMapLen(%struct.client* %0, i64 2), !dbg !1622
  %1 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1623
  call void @addReplyBulkCString(%struct.client* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0)), !dbg !1624
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1625
  %3 = load %struct.hdr_histogram*, %struct.hdr_histogram** %histogram.addr, align 8, !dbg !1626
  %total_count = getelementptr inbounds %struct.hdr_histogram, %struct.hdr_histogram* %3, i32 0, i32 14, !dbg !1627
  %4 = load i64, i64* %total_count, align 8, !dbg !1627
  call void @addReplyLongLong(%struct.client* %2, i64 %4), !dbg !1628
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1629
  call void @addReplyBulkCString(%struct.client* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0)), !dbg !1630
  call void @llvm.dbg.declare(metadata i8** %replylen, metadata !1631, metadata !DIExpression()), !dbg !1632
  %6 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1633
  %call = call i8* @addReplyDeferredLen(%struct.client* %6), !dbg !1634
  store i8* %call, i8** %replylen, align 8, !dbg !1632
  call void @llvm.dbg.declare(metadata i32* %samples, metadata !1635, metadata !DIExpression()), !dbg !1636
  store i32 0, i32* %samples, align 4, !dbg !1636
  call void @llvm.dbg.declare(metadata %struct.hdr_iter* %iter, metadata !1637, metadata !DIExpression()), !dbg !1687
  %7 = load %struct.hdr_histogram*, %struct.hdr_histogram** %histogram.addr, align 8, !dbg !1688
  call void @hdr_iter_log_init(%struct.hdr_iter* %iter, %struct.hdr_histogram* %7, i64 1024, double 2.000000e+00), !dbg !1689
  call void @llvm.dbg.declare(metadata i64* %previous_count, metadata !1690, metadata !DIExpression()), !dbg !1691
  store i64 0, i64* %previous_count, align 8, !dbg !1691
  br label %while.cond, !dbg !1692

while.cond:                                       ; preds = %if.end, %entry
  %call1 = call zeroext i1 @hdr_iter_next(%struct.hdr_iter* %iter), !dbg !1693
  br i1 %call1, label %while.body, label %while.end, !dbg !1692

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i64* %micros, metadata !1694, metadata !DIExpression()), !dbg !1697
  %highest_equivalent_value = getelementptr inbounds %struct.hdr_iter, %struct.hdr_iter* %iter, i32 0, i32 6, !dbg !1698
  %8 = load i64, i64* %highest_equivalent_value, align 8, !dbg !1698
  %div = sdiv i64 %8, 1000, !dbg !1699
  store i64 %div, i64* %micros, align 8, !dbg !1697
  call void @llvm.dbg.declare(metadata i64* %cumulative_count, metadata !1700, metadata !DIExpression()), !dbg !1701
  %cumulative_count2 = getelementptr inbounds %struct.hdr_iter, %struct.hdr_iter* %iter, i32 0, i32 4, !dbg !1702
  %9 = load i64, i64* %cumulative_count2, align 8, !dbg !1702
  store i64 %9, i64* %cumulative_count, align 8, !dbg !1701
  %10 = load i64, i64* %cumulative_count, align 8, !dbg !1703
  %11 = load i64, i64* %previous_count, align 8, !dbg !1705
  %cmp = icmp sgt i64 %10, %11, !dbg !1706
  br i1 %cmp, label %if.then, label %if.end, !dbg !1707

if.then:                                          ; preds = %while.body
  %12 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1708
  %13 = load i64, i64* %micros, align 8, !dbg !1710
  call void @addReplyLongLong(%struct.client* %12, i64 %13), !dbg !1711
  %14 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1712
  %15 = load i64, i64* %cumulative_count, align 8, !dbg !1713
  call void @addReplyLongLong(%struct.client* %14, i64 %15), !dbg !1714
  %16 = load i32, i32* %samples, align 4, !dbg !1715
  %inc = add nsw i32 %16, 1, !dbg !1715
  store i32 %inc, i32* %samples, align 4, !dbg !1715
  br label %if.end, !dbg !1716

if.end:                                           ; preds = %if.then, %while.body
  %17 = load i64, i64* %cumulative_count, align 8, !dbg !1717
  store i64 %17, i64* %previous_count, align 8, !dbg !1718
  br label %while.cond, !dbg !1692, !llvm.loop !1719

while.end:                                        ; preds = %while.cond
  %18 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1721
  %19 = load i8*, i8** %replylen, align 8, !dbg !1722
  %20 = load i32, i32* %samples, align 4, !dbg !1723
  %conv = sext i32 %20 to i64, !dbg !1723
  call void @setDeferredMapLen(%struct.client* %18, i8* %19, i64 %conv), !dbg !1724
  ret void, !dbg !1725
}

declare dso_local void @addReplyMapLen(%struct.client*, i64) #3

declare dso_local void @addReplyBulkCString(%struct.client*, i8*) #3

declare dso_local void @addReplyLongLong(%struct.client*, i64) #3

declare dso_local i8* @addReplyDeferredLen(%struct.client*) #3

declare dso_local void @hdr_iter_log_init(%struct.hdr_iter*, %struct.hdr_histogram*, i64, double) #3

declare dso_local zeroext i1 @hdr_iter_next(%struct.hdr_iter*) #3

declare dso_local void @setDeferredMapLen(%struct.client*, i8*, i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @latencyAllCommandsFillCDF(%struct.client* %c, %struct.dict* %commands, i32* %command_with_data) #0 !dbg !1726 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %commands.addr = alloca %struct.dict*, align 8
  %command_with_data.addr = alloca i32*, align 8
  %di = alloca %struct.dictIterator*, align 8
  %de = alloca %struct.dictEntry*, align 8
  %cmd = alloca %struct.redisCommand*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1730, metadata !DIExpression()), !dbg !1731
  store %struct.dict* %commands, %struct.dict** %commands.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dict** %commands.addr, metadata !1732, metadata !DIExpression()), !dbg !1733
  store i32* %command_with_data, i32** %command_with_data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %command_with_data.addr, metadata !1734, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.declare(metadata %struct.dictIterator** %di, metadata !1736, metadata !DIExpression()), !dbg !1737
  %0 = load %struct.dict*, %struct.dict** %commands.addr, align 8, !dbg !1738
  %call = call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %0), !dbg !1739
  store %struct.dictIterator* %call, %struct.dictIterator** %di, align 8, !dbg !1737
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !1740, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.declare(metadata %struct.redisCommand** %cmd, metadata !1742, metadata !DIExpression()), !dbg !1743
  br label %while.cond, !dbg !1744

while.cond:                                       ; preds = %if.end7, %entry
  %1 = load %struct.dictIterator*, %struct.dictIterator** %di, align 8, !dbg !1745
  %call1 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %1), !dbg !1746
  store %struct.dictEntry* %call1, %struct.dictEntry** %de, align 8, !dbg !1747
  %cmp = icmp ne %struct.dictEntry* %call1, null, !dbg !1748
  br i1 %cmp, label %while.body, label %while.end, !dbg !1744

while.body:                                       ; preds = %while.cond
  %2 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1749
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %2, i32 0, i32 1, !dbg !1749
  %val = bitcast %union.anon* %v to i8**, !dbg !1749
  %3 = load i8*, i8** %val, align 8, !dbg !1749
  %4 = bitcast i8* %3 to %struct.redisCommand*, !dbg !1751
  store %struct.redisCommand* %4, %struct.redisCommand** %cmd, align 8, !dbg !1752
  %5 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1753
  %latency_histogram = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %5, i32 0, i32 24, !dbg !1755
  %6 = load %struct.hdr_histogram*, %struct.hdr_histogram** %latency_histogram, align 8, !dbg !1755
  %tobool = icmp ne %struct.hdr_histogram* %6, null, !dbg !1753
  br i1 %tobool, label %if.then, label %if.end, !dbg !1756

if.then:                                          ; preds = %while.body
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1757
  %8 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1759
  %fullname = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %8, i32 0, i32 23, !dbg !1760
  %9 = load i8*, i8** %fullname, align 8, !dbg !1760
  %10 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1761
  %fullname2 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %10, i32 0, i32 23, !dbg !1762
  %11 = load i8*, i8** %fullname2, align 8, !dbg !1762
  %call3 = call i64 @sdslen(i8* %11), !dbg !1763
  call void @addReplyBulkCBuffer(%struct.client* %7, i8* %9, i64 %call3), !dbg !1764
  %12 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1765
  %13 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1766
  %latency_histogram4 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %13, i32 0, i32 24, !dbg !1767
  %14 = load %struct.hdr_histogram*, %struct.hdr_histogram** %latency_histogram4, align 8, !dbg !1767
  call void @fillCommandCDF(%struct.client* %12, %struct.hdr_histogram* %14), !dbg !1768
  %15 = load i32*, i32** %command_with_data.addr, align 8, !dbg !1769
  %16 = load i32, i32* %15, align 4, !dbg !1770
  %inc = add nsw i32 %16, 1, !dbg !1770
  store i32 %inc, i32* %15, align 4, !dbg !1770
  br label %if.end, !dbg !1771

if.end:                                           ; preds = %if.then, %while.body
  %17 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1772
  %subcommands = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %17, i32 0, i32 16, !dbg !1774
  %18 = load %struct.redisCommand*, %struct.redisCommand** %subcommands, align 8, !dbg !1774
  %tobool5 = icmp ne %struct.redisCommand* %18, null, !dbg !1772
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1775

if.then6:                                         ; preds = %if.end
  %19 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1776
  %20 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1778
  %subcommands_dict = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %20, i32 0, i32 32, !dbg !1779
  %21 = load %struct.dict*, %struct.dict** %subcommands_dict, align 8, !dbg !1779
  %22 = load i32*, i32** %command_with_data.addr, align 8, !dbg !1780
  call void @latencyAllCommandsFillCDF(%struct.client* %19, %struct.dict* %21, i32* %22), !dbg !1781
  br label %if.end7, !dbg !1782

if.end7:                                          ; preds = %if.then6, %if.end
  br label %while.cond, !dbg !1744, !llvm.loop !1783

while.end:                                        ; preds = %while.cond
  %23 = load %struct.dictIterator*, %struct.dictIterator** %di, align 8, !dbg !1785
  call void @dictReleaseIterator(%struct.dictIterator* %23), !dbg !1786
  ret void, !dbg !1787
}

declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @sdslen(i8* %s) #0 !dbg !1788 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %flags = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1792, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !1794, metadata !DIExpression()), !dbg !1795
  %0 = load i8*, i8** %s.addr, align 8, !dbg !1796
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1796
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1796
  store i8 %1, i8* %flags, align 1, !dbg !1795
  %2 = load i8, i8* %flags, align 1, !dbg !1797
  %conv = zext i8 %2 to i32, !dbg !1797
  %and = and i32 %conv, 7, !dbg !1798
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !1799

sw.bb:                                            ; preds = %entry
  %3 = load i8, i8* %flags, align 1, !dbg !1800
  %conv1 = zext i8 %3 to i32, !dbg !1800
  %shr = ashr i32 %conv1, 3, !dbg !1800
  %conv2 = sext i32 %shr to i64, !dbg !1800
  store i64 %conv2, i64* %retval, align 8, !dbg !1802
  br label %return, !dbg !1802

sw.bb3:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !dbg !1803
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -3, !dbg !1803
  %5 = bitcast i8* %add.ptr to %struct.sdshdr8*, !dbg !1804
  %len = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %5, i32 0, i32 0, !dbg !1804
  %6 = load i8, i8* %len, align 1, !dbg !1804
  %conv4 = zext i8 %6 to i64, !dbg !1803
  store i64 %conv4, i64* %retval, align 8, !dbg !1805
  br label %return, !dbg !1805

sw.bb5:                                           ; preds = %entry
  %7 = load i8*, i8** %s.addr, align 8, !dbg !1806
  %add.ptr6 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1806
  %8 = bitcast i8* %add.ptr6 to %struct.sdshdr16*, !dbg !1807
  %len7 = getelementptr inbounds %struct.sdshdr16, %struct.sdshdr16* %8, i32 0, i32 0, !dbg !1807
  %9 = load i16, i16* %len7, align 1, !dbg !1807
  %conv8 = zext i16 %9 to i64, !dbg !1806
  store i64 %conv8, i64* %retval, align 8, !dbg !1808
  br label %return, !dbg !1808

sw.bb9:                                           ; preds = %entry
  %10 = load i8*, i8** %s.addr, align 8, !dbg !1809
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !1809
  %11 = bitcast i8* %add.ptr10 to %struct.sdshdr32*, !dbg !1810
  %len11 = getelementptr inbounds %struct.sdshdr32, %struct.sdshdr32* %11, i32 0, i32 0, !dbg !1810
  %12 = load i32, i32* %len11, align 1, !dbg !1810
  %conv12 = zext i32 %12 to i64, !dbg !1809
  store i64 %conv12, i64* %retval, align 8, !dbg !1811
  br label %return, !dbg !1811

sw.bb13:                                          ; preds = %entry
  %13 = load i8*, i8** %s.addr, align 8, !dbg !1812
  %add.ptr14 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !1812
  %14 = bitcast i8* %add.ptr14 to %struct.sdshdr64*, !dbg !1813
  %len15 = getelementptr inbounds %struct.sdshdr64, %struct.sdshdr64* %14, i32 0, i32 0, !dbg !1813
  %15 = load i64, i64* %len15, align 1, !dbg !1813
  store i64 %15, i64* %retval, align 8, !dbg !1814
  br label %return, !dbg !1814

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !1815
  br label %return, !dbg !1815

return:                                           ; preds = %sw.epilog, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb
  %16 = load i64, i64* %retval, align 8, !dbg !1816
  ret i64 %16, !dbg !1816
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @latencySpecificCommandsFillCDF(%struct.client* %c) #0 !dbg !1817 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %replylen = alloca i8*, align 8
  %command_with_data = alloca i32, align 4
  %j = alloca i32, align 4
  %cmd = alloca %struct.redisCommand*, align 8
  %de = alloca %struct.dictEntry*, align 8
  %di = alloca %struct.dictIterator*, align 8
  %sub = alloca %struct.redisCommand*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1818, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.declare(metadata i8** %replylen, metadata !1820, metadata !DIExpression()), !dbg !1821
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1822
  %call = call i8* @addReplyDeferredLen(%struct.client* %0), !dbg !1823
  store i8* %call, i8** %replylen, align 8, !dbg !1821
  call void @llvm.dbg.declare(metadata i32* %command_with_data, metadata !1824, metadata !DIExpression()), !dbg !1825
  store i32 0, i32* %command_with_data, align 4, !dbg !1825
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1826, metadata !DIExpression()), !dbg !1828
  store i32 2, i32* %j, align 4, !dbg !1828
  br label %for.cond, !dbg !1829

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4, !dbg !1830
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1832
  %argc = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 9, !dbg !1833
  %3 = load i32, i32* %argc, align 8, !dbg !1833
  %cmp = icmp slt i32 %1, %3, !dbg !1834
  br i1 %cmp, label %for.body, label %for.end, !dbg !1835

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.redisCommand** %cmd, metadata !1836, metadata !DIExpression()), !dbg !1838
  %4 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1839
  %argv = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 10, !dbg !1840
  %5 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1840
  %6 = load i32, i32* %j, align 4, !dbg !1841
  %idxprom = sext i32 %6 to i64, !dbg !1839
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 %idxprom, !dbg !1839
  %7 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1839
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i32 0, i32 2, !dbg !1842
  %8 = load i8*, i8** %ptr, align 8, !dbg !1842
  %call1 = call %struct.redisCommand* @lookupCommandBySds(i8* %8), !dbg !1843
  store %struct.redisCommand* %call1, %struct.redisCommand** %cmd, align 8, !dbg !1838
  %9 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1844
  %cmp2 = icmp eq %struct.redisCommand* %9, null, !dbg !1846
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1847

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !1848

if.end:                                           ; preds = %for.body
  %10 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1850
  %latency_histogram = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %10, i32 0, i32 24, !dbg !1852
  %11 = load %struct.hdr_histogram*, %struct.hdr_histogram** %latency_histogram, align 8, !dbg !1852
  %tobool = icmp ne %struct.hdr_histogram* %11, null, !dbg !1850
  br i1 %tobool, label %if.then3, label %if.end7, !dbg !1853

if.then3:                                         ; preds = %if.end
  %12 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1854
  %13 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1856
  %fullname = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %13, i32 0, i32 23, !dbg !1857
  %14 = load i8*, i8** %fullname, align 8, !dbg !1857
  %15 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1858
  %fullname4 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %15, i32 0, i32 23, !dbg !1859
  %16 = load i8*, i8** %fullname4, align 8, !dbg !1859
  %call5 = call i64 @sdslen(i8* %16), !dbg !1860
  call void @addReplyBulkCBuffer(%struct.client* %12, i8* %14, i64 %call5), !dbg !1861
  %17 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1862
  %18 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1863
  %latency_histogram6 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %18, i32 0, i32 24, !dbg !1864
  %19 = load %struct.hdr_histogram*, %struct.hdr_histogram** %latency_histogram6, align 8, !dbg !1864
  call void @fillCommandCDF(%struct.client* %17, %struct.hdr_histogram* %19), !dbg !1865
  %20 = load i32, i32* %command_with_data, align 4, !dbg !1866
  %inc = add nsw i32 %20, 1, !dbg !1866
  store i32 %inc, i32* %command_with_data, align 4, !dbg !1866
  br label %if.end7, !dbg !1867

if.end7:                                          ; preds = %if.then3, %if.end
  %21 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1868
  %subcommands_dict = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %21, i32 0, i32 32, !dbg !1870
  %22 = load %struct.dict*, %struct.dict** %subcommands_dict, align 8, !dbg !1870
  %tobool8 = icmp ne %struct.dict* %22, null, !dbg !1868
  br i1 %tobool8, label %if.then9, label %if.end23, !dbg !1871

if.then9:                                         ; preds = %if.end7
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !1872, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.declare(metadata %struct.dictIterator** %di, metadata !1875, metadata !DIExpression()), !dbg !1876
  %23 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1877
  %subcommands_dict10 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %23, i32 0, i32 32, !dbg !1878
  %24 = load %struct.dict*, %struct.dict** %subcommands_dict10, align 8, !dbg !1878
  %call11 = call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %24), !dbg !1879
  store %struct.dictIterator* %call11, %struct.dictIterator** %di, align 8, !dbg !1876
  br label %while.cond, !dbg !1880

while.cond:                                       ; preds = %if.end22, %if.then9
  %25 = load %struct.dictIterator*, %struct.dictIterator** %di, align 8, !dbg !1881
  %call12 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %25), !dbg !1882
  store %struct.dictEntry* %call12, %struct.dictEntry** %de, align 8, !dbg !1883
  %cmp13 = icmp ne %struct.dictEntry* %call12, null, !dbg !1884
  br i1 %cmp13, label %while.body, label %while.end, !dbg !1880

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.redisCommand** %sub, metadata !1885, metadata !DIExpression()), !dbg !1887
  %26 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1888
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %26, i32 0, i32 1, !dbg !1888
  %val = bitcast %union.anon* %v to i8**, !dbg !1888
  %27 = load i8*, i8** %val, align 8, !dbg !1888
  %28 = bitcast i8* %27 to %struct.redisCommand*, !dbg !1888
  store %struct.redisCommand* %28, %struct.redisCommand** %sub, align 8, !dbg !1887
  %29 = load %struct.redisCommand*, %struct.redisCommand** %sub, align 8, !dbg !1889
  %latency_histogram14 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %29, i32 0, i32 24, !dbg !1891
  %30 = load %struct.hdr_histogram*, %struct.hdr_histogram** %latency_histogram14, align 8, !dbg !1891
  %tobool15 = icmp ne %struct.hdr_histogram* %30, null, !dbg !1889
  br i1 %tobool15, label %if.then16, label %if.end22, !dbg !1892

if.then16:                                        ; preds = %while.body
  %31 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1893
  %32 = load %struct.redisCommand*, %struct.redisCommand** %sub, align 8, !dbg !1895
  %fullname17 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %32, i32 0, i32 23, !dbg !1896
  %33 = load i8*, i8** %fullname17, align 8, !dbg !1896
  %34 = load %struct.redisCommand*, %struct.redisCommand** %sub, align 8, !dbg !1897
  %fullname18 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %34, i32 0, i32 23, !dbg !1898
  %35 = load i8*, i8** %fullname18, align 8, !dbg !1898
  %call19 = call i64 @sdslen(i8* %35), !dbg !1899
  call void @addReplyBulkCBuffer(%struct.client* %31, i8* %33, i64 %call19), !dbg !1900
  %36 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1901
  %37 = load %struct.redisCommand*, %struct.redisCommand** %sub, align 8, !dbg !1902
  %latency_histogram20 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %37, i32 0, i32 24, !dbg !1903
  %38 = load %struct.hdr_histogram*, %struct.hdr_histogram** %latency_histogram20, align 8, !dbg !1903
  call void @fillCommandCDF(%struct.client* %36, %struct.hdr_histogram* %38), !dbg !1904
  %39 = load i32, i32* %command_with_data, align 4, !dbg !1905
  %inc21 = add nsw i32 %39, 1, !dbg !1905
  store i32 %inc21, i32* %command_with_data, align 4, !dbg !1905
  br label %if.end22, !dbg !1906

if.end22:                                         ; preds = %if.then16, %while.body
  br label %while.cond, !dbg !1880, !llvm.loop !1907

while.end:                                        ; preds = %while.cond
  %40 = load %struct.dictIterator*, %struct.dictIterator** %di, align 8, !dbg !1909
  call void @dictReleaseIterator(%struct.dictIterator* %40), !dbg !1910
  br label %if.end23, !dbg !1911

if.end23:                                         ; preds = %while.end, %if.end7
  br label %for.inc, !dbg !1912

for.inc:                                          ; preds = %if.end23, %if.then
  %41 = load i32, i32* %j, align 4, !dbg !1913
  %inc24 = add nsw i32 %41, 1, !dbg !1913
  store i32 %inc24, i32* %j, align 4, !dbg !1913
  br label %for.cond, !dbg !1914, !llvm.loop !1915

for.end:                                          ; preds = %for.cond
  %42 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1917
  %43 = load i8*, i8** %replylen, align 8, !dbg !1918
  %44 = load i32, i32* %command_with_data, align 4, !dbg !1919
  %conv = sext i32 %44 to i64, !dbg !1919
  call void @setDeferredMapLen(%struct.client* %42, i8* %43, i64 %conv), !dbg !1920
  ret void, !dbg !1921
}

declare dso_local %struct.redisCommand* @lookupCommandBySds(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @latencyCommandReplyWithSamples(%struct.client* %c, %struct.latencyTimeSeries* %ts) #0 !dbg !1922 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %ts.addr = alloca %struct.latencyTimeSeries*, align 8
  %replylen = alloca i8*, align 8
  %samples = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1925, metadata !DIExpression()), !dbg !1926
  store %struct.latencyTimeSeries* %ts, %struct.latencyTimeSeries** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.latencyTimeSeries** %ts.addr, metadata !1927, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.declare(metadata i8** %replylen, metadata !1929, metadata !DIExpression()), !dbg !1930
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1931
  %call = call i8* @addReplyDeferredLen(%struct.client* %0), !dbg !1932
  store i8* %call, i8** %replylen, align 8, !dbg !1930
  call void @llvm.dbg.declare(metadata i32* %samples, metadata !1933, metadata !DIExpression()), !dbg !1934
  store i32 0, i32* %samples, align 4, !dbg !1934
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1935, metadata !DIExpression()), !dbg !1936
  store i32 0, i32* %j, align 4, !dbg !1937
  br label %for.cond, !dbg !1939

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4, !dbg !1940
  %cmp = icmp slt i32 %1, 160, !dbg !1942
  br i1 %cmp, label %for.body, label %for.end, !dbg !1943

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1944, metadata !DIExpression()), !dbg !1946
  %2 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts.addr, align 8, !dbg !1947
  %idx = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %2, i32 0, i32 0, !dbg !1948
  %3 = load i32, i32* %idx, align 4, !dbg !1948
  %4 = load i32, i32* %j, align 4, !dbg !1949
  %add = add nsw i32 %3, %4, !dbg !1950
  %rem = srem i32 %add, 160, !dbg !1951
  store i32 %rem, i32* %i, align 4, !dbg !1946
  %5 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts.addr, align 8, !dbg !1952
  %samples1 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %5, i32 0, i32 2, !dbg !1954
  %6 = load i32, i32* %i, align 4, !dbg !1955
  %idxprom = sext i32 %6 to i64, !dbg !1952
  %arrayidx = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples1, i64 0, i64 %idxprom, !dbg !1952
  %time = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx, i32 0, i32 0, !dbg !1956
  %7 = load i32, i32* %time, align 4, !dbg !1956
  %cmp2 = icmp eq i32 %7, 0, !dbg !1957
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1958

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !1959

if.end:                                           ; preds = %for.body
  %8 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1960
  call void @addReplyArrayLen(%struct.client* %8, i64 2), !dbg !1961
  %9 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1962
  %10 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts.addr, align 8, !dbg !1963
  %samples3 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %10, i32 0, i32 2, !dbg !1964
  %11 = load i32, i32* %i, align 4, !dbg !1965
  %idxprom4 = sext i32 %11 to i64, !dbg !1963
  %arrayidx5 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples3, i64 0, i64 %idxprom4, !dbg !1963
  %time6 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx5, i32 0, i32 0, !dbg !1966
  %12 = load i32, i32* %time6, align 4, !dbg !1966
  %conv = sext i32 %12 to i64, !dbg !1963
  call void @addReplyLongLong(%struct.client* %9, i64 %conv), !dbg !1967
  %13 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1968
  %14 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts.addr, align 8, !dbg !1969
  %samples7 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %14, i32 0, i32 2, !dbg !1970
  %15 = load i32, i32* %i, align 4, !dbg !1971
  %idxprom8 = sext i32 %15 to i64, !dbg !1969
  %arrayidx9 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples7, i64 0, i64 %idxprom8, !dbg !1969
  %latency = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx9, i32 0, i32 1, !dbg !1972
  %16 = load i32, i32* %latency, align 4, !dbg !1972
  %conv10 = zext i32 %16 to i64, !dbg !1969
  call void @addReplyLongLong(%struct.client* %13, i64 %conv10), !dbg !1973
  %17 = load i32, i32* %samples, align 4, !dbg !1974
  %inc = add nsw i32 %17, 1, !dbg !1974
  store i32 %inc, i32* %samples, align 4, !dbg !1974
  br label %for.inc, !dbg !1975

for.inc:                                          ; preds = %if.end, %if.then
  %18 = load i32, i32* %j, align 4, !dbg !1976
  %inc11 = add nsw i32 %18, 1, !dbg !1976
  store i32 %inc11, i32* %j, align 4, !dbg !1976
  br label %for.cond, !dbg !1977, !llvm.loop !1978

for.end:                                          ; preds = %for.cond
  %19 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1980
  %20 = load i8*, i8** %replylen, align 8, !dbg !1981
  %21 = load i32, i32* %samples, align 4, !dbg !1982
  %conv12 = sext i32 %21 to i64, !dbg !1982
  call void @setDeferredArrayLen(%struct.client* %19, i8* %20, i64 %conv12), !dbg !1983
  ret void, !dbg !1984
}

declare dso_local void @addReplyArrayLen(%struct.client*, i64) #3

declare dso_local void @setDeferredArrayLen(%struct.client*, i8*, i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @latencyCommandReplyWithLatestEvents(%struct.client* %c) #0 !dbg !1985 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %di = alloca %struct.dictIterator*, align 8
  %de = alloca %struct.dictEntry*, align 8
  %event = alloca i8*, align 8
  %ts = alloca %struct.latencyTimeSeries*, align 8
  %last = alloca i32, align 4
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1986, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.declare(metadata %struct.dictIterator** %di, metadata !1988, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !1990, metadata !DIExpression()), !dbg !1991
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1992
  %1 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 383), align 8, !dbg !1993
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %1, i32 0, i32 2, !dbg !1993
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !1993
  %2 = load i64, i64* %arrayidx, align 8, !dbg !1993
  %3 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 383), align 8, !dbg !1993
  %ht_used1 = getelementptr inbounds %struct.dict, %struct.dict* %3, i32 0, i32 2, !dbg !1993
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used1, i64 0, i64 1, !dbg !1993
  %4 = load i64, i64* %arrayidx2, align 8, !dbg !1993
  %add = add i64 %2, %4, !dbg !1993
  call void @addReplyArrayLen(%struct.client* %0, i64 %add), !dbg !1994
  %5 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 383), align 8, !dbg !1995
  %call = call %struct.dictIterator* @dictGetIterator(%struct.dict* %5), !dbg !1996
  store %struct.dictIterator* %call, %struct.dictIterator** %di, align 8, !dbg !1997
  br label %while.cond, !dbg !1998

while.cond:                                       ; preds = %while.body, %entry
  %6 = load %struct.dictIterator*, %struct.dictIterator** %di, align 8, !dbg !1999
  %call3 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %6), !dbg !2000
  store %struct.dictEntry* %call3, %struct.dictEntry** %de, align 8, !dbg !2001
  %cmp = icmp ne %struct.dictEntry* %call3, null, !dbg !2002
  br i1 %cmp, label %while.body, label %while.end, !dbg !1998

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %event, metadata !2003, metadata !DIExpression()), !dbg !2005
  %7 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !2006
  %key = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %7, i32 0, i32 0, !dbg !2006
  %8 = load i8*, i8** %key, align 8, !dbg !2006
  store i8* %8, i8** %event, align 8, !dbg !2005
  call void @llvm.dbg.declare(metadata %struct.latencyTimeSeries** %ts, metadata !2007, metadata !DIExpression()), !dbg !2008
  %9 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !2009
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %9, i32 0, i32 1, !dbg !2009
  %val = bitcast %union.anon* %v to i8**, !dbg !2009
  %10 = load i8*, i8** %val, align 8, !dbg !2009
  %11 = bitcast i8* %10 to %struct.latencyTimeSeries*, !dbg !2009
  store %struct.latencyTimeSeries* %11, %struct.latencyTimeSeries** %ts, align 8, !dbg !2008
  call void @llvm.dbg.declare(metadata i32* %last, metadata !2010, metadata !DIExpression()), !dbg !2011
  %12 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !2012
  %idx = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %12, i32 0, i32 0, !dbg !2013
  %13 = load i32, i32* %idx, align 4, !dbg !2013
  %add4 = add nsw i32 %13, 160, !dbg !2014
  %sub = sub nsw i32 %add4, 1, !dbg !2015
  %rem = srem i32 %sub, 160, !dbg !2016
  store i32 %rem, i32* %last, align 4, !dbg !2011
  %14 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2017
  call void @addReplyArrayLen(%struct.client* %14, i64 4), !dbg !2018
  %15 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2019
  %16 = load i8*, i8** %event, align 8, !dbg !2020
  call void @addReplyBulkCString(%struct.client* %15, i8* %16), !dbg !2021
  %17 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2022
  %18 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !2023
  %samples = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %18, i32 0, i32 2, !dbg !2024
  %19 = load i32, i32* %last, align 4, !dbg !2025
  %idxprom = sext i32 %19 to i64, !dbg !2023
  %arrayidx5 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples, i64 0, i64 %idxprom, !dbg !2023
  %time = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx5, i32 0, i32 0, !dbg !2026
  %20 = load i32, i32* %time, align 4, !dbg !2026
  %conv = sext i32 %20 to i64, !dbg !2023
  call void @addReplyLongLong(%struct.client* %17, i64 %conv), !dbg !2027
  %21 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2028
  %22 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !2029
  %samples6 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %22, i32 0, i32 2, !dbg !2030
  %23 = load i32, i32* %last, align 4, !dbg !2031
  %idxprom7 = sext i32 %23 to i64, !dbg !2029
  %arrayidx8 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples6, i64 0, i64 %idxprom7, !dbg !2029
  %latency = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx8, i32 0, i32 1, !dbg !2032
  %24 = load i32, i32* %latency, align 4, !dbg !2032
  %conv9 = zext i32 %24 to i64, !dbg !2029
  call void @addReplyLongLong(%struct.client* %21, i64 %conv9), !dbg !2033
  %25 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2034
  %26 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !2035
  %max = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %26, i32 0, i32 1, !dbg !2036
  %27 = load i32, i32* %max, align 4, !dbg !2036
  %conv10 = zext i32 %27 to i64, !dbg !2035
  call void @addReplyLongLong(%struct.client* %25, i64 %conv10), !dbg !2037
  br label %while.cond, !dbg !1998, !llvm.loop !2038

while.end:                                        ; preds = %while.cond
  %28 = load %struct.dictIterator*, %struct.dictIterator** %di, align 8, !dbg !2040
  call void @dictReleaseIterator(%struct.dictIterator* %28), !dbg !2041
  ret void, !dbg !2042
}

declare dso_local %struct.dictIterator* @dictGetIterator(%struct.dict*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @latencyCommandGenSparkeline(i8* %event, %struct.latencyTimeSeries* %ts) #0 !dbg !2043 {
entry:
  %event.addr = alloca i8*, align 8
  %ts.addr = alloca %struct.latencyTimeSeries*, align 8
  %j = alloca i32, align 4
  %seq = alloca %struct.sequence*, align 8
  %graph = alloca i8*, align 8
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %i = alloca i32, align 4
  %elapsed = alloca i32, align 4
  %buf = alloca [64 x i8], align 16
  store i8* %event, i8** %event.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %event.addr, metadata !2046, metadata !DIExpression()), !dbg !2047
  store %struct.latencyTimeSeries* %ts, %struct.latencyTimeSeries** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.latencyTimeSeries** %ts.addr, metadata !2048, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2050, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.declare(metadata %struct.sequence** %seq, metadata !2052, metadata !DIExpression()), !dbg !2067
  %call = call %struct.sequence* @createSparklineSequence(), !dbg !2068
  store %struct.sequence* %call, %struct.sequence** %seq, align 8, !dbg !2067
  call void @llvm.dbg.declare(metadata i8** %graph, metadata !2069, metadata !DIExpression()), !dbg !2070
  %call1 = call i8* @sdsempty(), !dbg !2071
  store i8* %call1, i8** %graph, align 8, !dbg !2070
  call void @llvm.dbg.declare(metadata i32* %min, metadata !2072, metadata !DIExpression()), !dbg !2073
  store i32 0, i32* %min, align 4, !dbg !2073
  call void @llvm.dbg.declare(metadata i32* %max, metadata !2074, metadata !DIExpression()), !dbg !2075
  store i32 0, i32* %max, align 4, !dbg !2075
  store i32 0, i32* %j, align 4, !dbg !2076
  br label %for.cond, !dbg !2078

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4, !dbg !2079
  %cmp = icmp slt i32 %0, 160, !dbg !2081
  br i1 %cmp, label %for.body, label %for.end, !dbg !2082

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2083, metadata !DIExpression()), !dbg !2085
  %1 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts.addr, align 8, !dbg !2086
  %idx = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %1, i32 0, i32 0, !dbg !2087
  %2 = load i32, i32* %idx, align 4, !dbg !2087
  %3 = load i32, i32* %j, align 4, !dbg !2088
  %add = add nsw i32 %2, %3, !dbg !2089
  %rem = srem i32 %add, 160, !dbg !2090
  store i32 %rem, i32* %i, align 4, !dbg !2085
  call void @llvm.dbg.declare(metadata i32* %elapsed, metadata !2091, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.declare(metadata [64 x i8]* %buf, metadata !2093, metadata !DIExpression()), !dbg !2097
  %4 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts.addr, align 8, !dbg !2098
  %samples = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %4, i32 0, i32 2, !dbg !2100
  %5 = load i32, i32* %i, align 4, !dbg !2101
  %idxprom = sext i32 %5 to i64, !dbg !2098
  %arrayidx = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples, i64 0, i64 %idxprom, !dbg !2098
  %time = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx, i32 0, i32 0, !dbg !2102
  %6 = load i32, i32* %time, align 4, !dbg !2102
  %cmp2 = icmp eq i32 %6, 0, !dbg !2103
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2104

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !2105

if.end:                                           ; preds = %for.body
  %7 = load %struct.sequence*, %struct.sequence** %seq, align 8, !dbg !2106
  %length = getelementptr inbounds %struct.sequence, %struct.sequence* %7, i32 0, i32 0, !dbg !2108
  %8 = load i32, i32* %length, align 8, !dbg !2108
  %cmp3 = icmp eq i32 %8, 0, !dbg !2109
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !2110

if.then4:                                         ; preds = %if.end
  %9 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts.addr, align 8, !dbg !2111
  %samples5 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %9, i32 0, i32 2, !dbg !2113
  %10 = load i32, i32* %i, align 4, !dbg !2114
  %idxprom6 = sext i32 %10 to i64, !dbg !2111
  %arrayidx7 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples5, i64 0, i64 %idxprom6, !dbg !2111
  %latency = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx7, i32 0, i32 1, !dbg !2115
  %11 = load i32, i32* %latency, align 4, !dbg !2115
  store i32 %11, i32* %max, align 4, !dbg !2116
  store i32 %11, i32* %min, align 4, !dbg !2117
  br label %if.end30, !dbg !2118

if.else:                                          ; preds = %if.end
  %12 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts.addr, align 8, !dbg !2119
  %samples8 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %12, i32 0, i32 2, !dbg !2122
  %13 = load i32, i32* %i, align 4, !dbg !2123
  %idxprom9 = sext i32 %13 to i64, !dbg !2119
  %arrayidx10 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples8, i64 0, i64 %idxprom9, !dbg !2119
  %latency11 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx10, i32 0, i32 1, !dbg !2124
  %14 = load i32, i32* %latency11, align 4, !dbg !2124
  %15 = load i32, i32* %max, align 4, !dbg !2125
  %cmp12 = icmp ugt i32 %14, %15, !dbg !2126
  br i1 %cmp12, label %if.then13, label %if.end18, !dbg !2127

if.then13:                                        ; preds = %if.else
  %16 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts.addr, align 8, !dbg !2128
  %samples14 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %16, i32 0, i32 2, !dbg !2129
  %17 = load i32, i32* %i, align 4, !dbg !2130
  %idxprom15 = sext i32 %17 to i64, !dbg !2128
  %arrayidx16 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples14, i64 0, i64 %idxprom15, !dbg !2128
  %latency17 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx16, i32 0, i32 1, !dbg !2131
  %18 = load i32, i32* %latency17, align 4, !dbg !2131
  store i32 %18, i32* %max, align 4, !dbg !2132
  br label %if.end18, !dbg !2133

if.end18:                                         ; preds = %if.then13, %if.else
  %19 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts.addr, align 8, !dbg !2134
  %samples19 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %19, i32 0, i32 2, !dbg !2136
  %20 = load i32, i32* %i, align 4, !dbg !2137
  %idxprom20 = sext i32 %20 to i64, !dbg !2134
  %arrayidx21 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples19, i64 0, i64 %idxprom20, !dbg !2134
  %latency22 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx21, i32 0, i32 1, !dbg !2138
  %21 = load i32, i32* %latency22, align 4, !dbg !2138
  %22 = load i32, i32* %min, align 4, !dbg !2139
  %cmp23 = icmp ult i32 %21, %22, !dbg !2140
  br i1 %cmp23, label %if.then24, label %if.end29, !dbg !2141

if.then24:                                        ; preds = %if.end18
  %23 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts.addr, align 8, !dbg !2142
  %samples25 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %23, i32 0, i32 2, !dbg !2143
  %24 = load i32, i32* %i, align 4, !dbg !2144
  %idxprom26 = sext i32 %24 to i64, !dbg !2142
  %arrayidx27 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples25, i64 0, i64 %idxprom26, !dbg !2142
  %latency28 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx27, i32 0, i32 1, !dbg !2145
  %25 = load i32, i32* %latency28, align 4, !dbg !2145
  store i32 %25, i32* %min, align 4, !dbg !2146
  br label %if.end29, !dbg !2147

if.end29:                                         ; preds = %if.then24, %if.end18
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then4
  %call31 = call i64 @time(i64* null) #8, !dbg !2148
  %26 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts.addr, align 8, !dbg !2149
  %samples32 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %26, i32 0, i32 2, !dbg !2150
  %27 = load i32, i32* %i, align 4, !dbg !2151
  %idxprom33 = sext i32 %27 to i64, !dbg !2149
  %arrayidx34 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples32, i64 0, i64 %idxprom33, !dbg !2149
  %time35 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx34, i32 0, i32 0, !dbg !2152
  %28 = load i32, i32* %time35, align 4, !dbg !2152
  %conv = sext i32 %28 to i64, !dbg !2149
  %sub = sub nsw i64 %call31, %conv, !dbg !2153
  %conv36 = trunc i64 %sub to i32, !dbg !2148
  store i32 %conv36, i32* %elapsed, align 4, !dbg !2154
  %29 = load i32, i32* %elapsed, align 4, !dbg !2155
  %cmp37 = icmp slt i32 %29, 60, !dbg !2157
  br i1 %cmp37, label %if.then39, label %if.else41, !dbg !2158

if.then39:                                        ; preds = %if.end30
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0, !dbg !2159
  %30 = load i32, i32* %elapsed, align 4, !dbg !2160
  %call40 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i32 %30) #8, !dbg !2161
  br label %if.end60, !dbg !2161

if.else41:                                        ; preds = %if.end30
  %31 = load i32, i32* %elapsed, align 4, !dbg !2162
  %cmp42 = icmp slt i32 %31, 3600, !dbg !2164
  br i1 %cmp42, label %if.then44, label %if.else47, !dbg !2165

if.then44:                                        ; preds = %if.else41
  %arraydecay45 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0, !dbg !2166
  %32 = load i32, i32* %elapsed, align 4, !dbg !2167
  %div = sdiv i32 %32, 60, !dbg !2168
  %call46 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay45, i64 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), i32 %div) #8, !dbg !2169
  br label %if.end59, !dbg !2169

if.else47:                                        ; preds = %if.else41
  %33 = load i32, i32* %elapsed, align 4, !dbg !2170
  %cmp48 = icmp slt i32 %33, 86400, !dbg !2172
  br i1 %cmp48, label %if.then50, label %if.else54, !dbg !2173

if.then50:                                        ; preds = %if.else47
  %arraydecay51 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0, !dbg !2174
  %34 = load i32, i32* %elapsed, align 4, !dbg !2175
  %div52 = sdiv i32 %34, 3600, !dbg !2176
  %call53 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay51, i64 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i32 %div52) #8, !dbg !2177
  br label %if.end58, !dbg !2177

if.else54:                                        ; preds = %if.else47
  %arraydecay55 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0, !dbg !2178
  %35 = load i32, i32* %elapsed, align 4, !dbg !2179
  %div56 = sdiv i32 %35, 86400, !dbg !2180
  %call57 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay55, i64 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i32 %div56) #8, !dbg !2181
  br label %if.end58

if.end58:                                         ; preds = %if.else54, %if.then50
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then44
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then39
  %36 = load %struct.sequence*, %struct.sequence** %seq, align 8, !dbg !2182
  %37 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts.addr, align 8, !dbg !2183
  %samples61 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %37, i32 0, i32 2, !dbg !2184
  %38 = load i32, i32* %i, align 4, !dbg !2185
  %idxprom62 = sext i32 %38 to i64, !dbg !2183
  %arrayidx63 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %samples61, i64 0, i64 %idxprom62, !dbg !2183
  %latency64 = getelementptr inbounds %struct.latencySample, %struct.latencySample* %arrayidx63, i32 0, i32 1, !dbg !2186
  %39 = load i32, i32* %latency64, align 4, !dbg !2186
  %conv65 = uitofp i32 %39 to double, !dbg !2183
  %arraydecay66 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0, !dbg !2187
  call void @sparklineSequenceAddSample(%struct.sequence* %36, double %conv65, i8* %arraydecay66), !dbg !2188
  br label %for.inc, !dbg !2189

for.inc:                                          ; preds = %if.end60, %if.then
  %40 = load i32, i32* %j, align 4, !dbg !2190
  %inc = add nsw i32 %40, 1, !dbg !2190
  store i32 %inc, i32* %j, align 4, !dbg !2190
  br label %for.cond, !dbg !2191, !llvm.loop !2192

for.end:                                          ; preds = %for.cond
  %41 = load i8*, i8** %graph, align 8, !dbg !2194
  %42 = load i8*, i8** %event.addr, align 8, !dbg !2195
  %43 = load i32, i32* %max, align 4, !dbg !2196
  %conv67 = zext i32 %43 to i64, !dbg !2197
  %44 = load i32, i32* %min, align 4, !dbg !2198
  %conv68 = zext i32 %44 to i64, !dbg !2199
  %45 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts.addr, align 8, !dbg !2200
  %max69 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %45, i32 0, i32 1, !dbg !2201
  %46 = load i32, i32* %max69, align 4, !dbg !2201
  %conv70 = zext i32 %46 to i64, !dbg !2202
  %call71 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.49, i64 0, i64 0), i8* %42, i64 %conv67, i64 %conv68, i64 %conv70), !dbg !2203
  store i8* %call71, i8** %graph, align 8, !dbg !2204
  store i32 0, i32* %j, align 4, !dbg !2205
  br label %for.cond72, !dbg !2207

for.cond72:                                       ; preds = %for.inc77, %for.end
  %47 = load i32, i32* %j, align 4, !dbg !2208
  %cmp73 = icmp slt i32 %47, 80, !dbg !2210
  br i1 %cmp73, label %for.body75, label %for.end79, !dbg !2211

for.body75:                                       ; preds = %for.cond72
  %48 = load i8*, i8** %graph, align 8, !dbg !2212
  %call76 = call i8* @sdscatlen(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0), i64 1), !dbg !2213
  store i8* %call76, i8** %graph, align 8, !dbg !2214
  br label %for.inc77, !dbg !2215

for.inc77:                                        ; preds = %for.body75
  %49 = load i32, i32* %j, align 4, !dbg !2216
  %inc78 = add nsw i32 %49, 1, !dbg !2216
  store i32 %inc78, i32* %j, align 4, !dbg !2216
  br label %for.cond72, !dbg !2217, !llvm.loop !2218

for.end79:                                        ; preds = %for.cond72
  %50 = load i8*, i8** %graph, align 8, !dbg !2220
  %call80 = call i8* @sdscatlen(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1), !dbg !2221
  store i8* %call80, i8** %graph, align 8, !dbg !2222
  %51 = load i8*, i8** %graph, align 8, !dbg !2223
  %52 = load %struct.sequence*, %struct.sequence** %seq, align 8, !dbg !2224
  %call81 = call i8* @sparklineRender(i8* %51, %struct.sequence* %52, i32 80, i32 4, i32 1), !dbg !2225
  store i8* %call81, i8** %graph, align 8, !dbg !2226
  %53 = load %struct.sequence*, %struct.sequence** %seq, align 8, !dbg !2227
  call void @freeSparklineSequence(%struct.sequence* %53), !dbg !2228
  %54 = load i8*, i8** %graph, align 8, !dbg !2229
  ret i8* %54, !dbg !2230
}

declare dso_local %struct.sequence* @createSparklineSequence() #3

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #4

declare dso_local void @sparklineSequenceAddSample(%struct.sequence*, double, i8*) #3

declare dso_local i8* @sparklineRender(i8*, %struct.sequence*, i32, i32, i32) #3

declare dso_local void @freeSparklineSequence(%struct.sequence*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @latencyCommand(%struct.client* %c) #0 !dbg !2231 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %ts = alloca %struct.latencyTimeSeries*, align 8
  %graph = alloca i8*, align 8
  %de = alloca %struct.dictEntry*, align 8
  %event = alloca i8*, align 8
  %report = alloca i8*, align 8
  %j = alloca i32, align 4
  %resets = alloca i32, align 4
  %command_with_data = alloca i32, align 4
  %replylen = alloca i8*, align 8
  %help = alloca [15 x i8*], align 16
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !2232, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.declare(metadata %struct.latencyTimeSeries** %ts, metadata !2234, metadata !DIExpression()), !dbg !2235
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2236
  %argv = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 10, !dbg !2238
  %1 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !2238
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 1, !dbg !2236
  %2 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !2236
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i32 0, i32 2, !dbg !2239
  %3 = load i8*, i8** %ptr, align 8, !dbg !2239
  %call = call i32 @strcasecmp(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0)) #7, !dbg !2240
  %tobool = icmp ne i32 %call, 0, !dbg !2240
  br i1 %tobool, label %if.else7, label %land.lhs.true, !dbg !2241

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2242
  %argc = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 9, !dbg !2243
  %5 = load i32, i32* %argc, align 8, !dbg !2243
  %cmp = icmp eq i32 %5, 3, !dbg !2244
  br i1 %cmp, label %if.then, label %if.else7, !dbg !2245

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 383), align 8, !dbg !2246
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2248
  %argv1 = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 10, !dbg !2249
  %8 = load %struct.redisObject**, %struct.redisObject*** %argv1, align 8, !dbg !2249
  %arrayidx2 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 2, !dbg !2248
  %9 = load %struct.redisObject*, %struct.redisObject** %arrayidx2, align 8, !dbg !2248
  %ptr3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i32 0, i32 2, !dbg !2250
  %10 = load i8*, i8** %ptr3, align 8, !dbg !2250
  %call4 = call i8* @dictFetchValue(%struct.dict* %6, i8* %10), !dbg !2251
  %11 = bitcast i8* %call4 to %struct.latencyTimeSeries*, !dbg !2251
  store %struct.latencyTimeSeries* %11, %struct.latencyTimeSeries** %ts, align 8, !dbg !2252
  %12 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !2253
  %cmp5 = icmp eq %struct.latencyTimeSeries* %12, null, !dbg !2255
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !2256

if.then6:                                         ; preds = %if.then
  %13 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2257
  call void @addReplyArrayLen(%struct.client* %13, i64 0), !dbg !2259
  br label %if.end, !dbg !2260

if.else:                                          ; preds = %if.then
  %14 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2261
  %15 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !2263
  call void @latencyCommandReplyWithSamples(%struct.client* %14, %struct.latencyTimeSeries* %15), !dbg !2264
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  br label %if.end109, !dbg !2265

if.else7:                                         ; preds = %land.lhs.true, %entry
  %16 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2266
  %argv8 = getelementptr inbounds %struct.client, %struct.client* %16, i32 0, i32 10, !dbg !2268
  %17 = load %struct.redisObject**, %struct.redisObject*** %argv8, align 8, !dbg !2268
  %arrayidx9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 1, !dbg !2266
  %18 = load %struct.redisObject*, %struct.redisObject** %arrayidx9, align 8, !dbg !2266
  %ptr10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i32 0, i32 2, !dbg !2269
  %19 = load i8*, i8** %ptr10, align 8, !dbg !2269
  %call11 = call i32 @strcasecmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0)) #7, !dbg !2270
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2270
  br i1 %tobool12, label %if.else26, label %land.lhs.true13, !dbg !2271

land.lhs.true13:                                  ; preds = %if.else7
  %20 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2272
  %argc14 = getelementptr inbounds %struct.client, %struct.client* %20, i32 0, i32 9, !dbg !2273
  %21 = load i32, i32* %argc14, align 8, !dbg !2273
  %cmp15 = icmp eq i32 %21, 3, !dbg !2274
  br i1 %cmp15, label %if.then16, label %if.else26, !dbg !2275

if.then16:                                        ; preds = %land.lhs.true13
  call void @llvm.dbg.declare(metadata i8** %graph, metadata !2276, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !2279, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.declare(metadata i8** %event, metadata !2281, metadata !DIExpression()), !dbg !2282
  %22 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 383), align 8, !dbg !2283
  %23 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2284
  %argv17 = getelementptr inbounds %struct.client, %struct.client* %23, i32 0, i32 10, !dbg !2285
  %24 = load %struct.redisObject**, %struct.redisObject*** %argv17, align 8, !dbg !2285
  %arrayidx18 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %24, i64 2, !dbg !2284
  %25 = load %struct.redisObject*, %struct.redisObject** %arrayidx18, align 8, !dbg !2284
  %ptr19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %25, i32 0, i32 2, !dbg !2286
  %26 = load i8*, i8** %ptr19, align 8, !dbg !2286
  %call20 = call %struct.dictEntry* @dictFind(%struct.dict* %22, i8* %26), !dbg !2287
  store %struct.dictEntry* %call20, %struct.dictEntry** %de, align 8, !dbg !2288
  %27 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !2289
  %cmp21 = icmp eq %struct.dictEntry* %27, null, !dbg !2291
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2292

if.then22:                                        ; preds = %if.then16
  br label %nodataerr, !dbg !2293

if.end23:                                         ; preds = %if.then16
  %28 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !2294
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %28, i32 0, i32 1, !dbg !2294
  %val = bitcast %union.anon* %v to i8**, !dbg !2294
  %29 = load i8*, i8** %val, align 8, !dbg !2294
  %30 = bitcast i8* %29 to %struct.latencyTimeSeries*, !dbg !2294
  store %struct.latencyTimeSeries* %30, %struct.latencyTimeSeries** %ts, align 8, !dbg !2295
  %31 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !2296
  %key = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %31, i32 0, i32 0, !dbg !2296
  %32 = load i8*, i8** %key, align 8, !dbg !2296
  store i8* %32, i8** %event, align 8, !dbg !2297
  %33 = load i8*, i8** %event, align 8, !dbg !2298
  %34 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %ts, align 8, !dbg !2299
  %call24 = call i8* @latencyCommandGenSparkeline(i8* %33, %struct.latencyTimeSeries* %34), !dbg !2300
  store i8* %call24, i8** %graph, align 8, !dbg !2301
  %35 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2302
  %36 = load i8*, i8** %graph, align 8, !dbg !2303
  %37 = load i8*, i8** %graph, align 8, !dbg !2304
  %call25 = call i64 @sdslen(i8* %37), !dbg !2305
  call void @addReplyVerbatim(%struct.client* %35, i8* %36, i64 %call25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)), !dbg !2306
  %38 = load i8*, i8** %graph, align 8, !dbg !2307
  call void @sdsfree(i8* %38), !dbg !2308
  br label %if.end108, !dbg !2309

if.else26:                                        ; preds = %land.lhs.true13, %if.else7
  %39 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2310
  %argv27 = getelementptr inbounds %struct.client, %struct.client* %39, i32 0, i32 10, !dbg !2312
  %40 = load %struct.redisObject**, %struct.redisObject*** %argv27, align 8, !dbg !2312
  %arrayidx28 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %40, i64 1, !dbg !2310
  %41 = load %struct.redisObject*, %struct.redisObject** %arrayidx28, align 8, !dbg !2310
  %ptr29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %41, i32 0, i32 2, !dbg !2313
  %42 = load i8*, i8** %ptr29, align 8, !dbg !2313
  %call30 = call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0)) #7, !dbg !2314
  %tobool31 = icmp ne i32 %call30, 0, !dbg !2314
  br i1 %tobool31, label %if.else36, label %land.lhs.true32, !dbg !2315

land.lhs.true32:                                  ; preds = %if.else26
  %43 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2316
  %argc33 = getelementptr inbounds %struct.client, %struct.client* %43, i32 0, i32 9, !dbg !2317
  %44 = load i32, i32* %argc33, align 8, !dbg !2317
  %cmp34 = icmp eq i32 %44, 2, !dbg !2318
  br i1 %cmp34, label %if.then35, label %if.else36, !dbg !2319

if.then35:                                        ; preds = %land.lhs.true32
  %45 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2320
  call void @latencyCommandReplyWithLatestEvents(%struct.client* %45), !dbg !2322
  br label %if.end107, !dbg !2323

if.else36:                                        ; preds = %land.lhs.true32, %if.else26
  %46 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2324
  %argv37 = getelementptr inbounds %struct.client, %struct.client* %46, i32 0, i32 10, !dbg !2326
  %47 = load %struct.redisObject**, %struct.redisObject*** %argv37, align 8, !dbg !2326
  %arrayidx38 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 1, !dbg !2324
  %48 = load %struct.redisObject*, %struct.redisObject** %arrayidx38, align 8, !dbg !2324
  %ptr39 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %48, i32 0, i32 2, !dbg !2327
  %49 = load i8*, i8** %ptr39, align 8, !dbg !2327
  %call40 = call i32 @strcasecmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0)) #7, !dbg !2328
  %tobool41 = icmp ne i32 %call40, 0, !dbg !2328
  br i1 %tobool41, label %if.else48, label %land.lhs.true42, !dbg !2329

land.lhs.true42:                                  ; preds = %if.else36
  %50 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2330
  %argc43 = getelementptr inbounds %struct.client, %struct.client* %50, i32 0, i32 9, !dbg !2331
  %51 = load i32, i32* %argc43, align 8, !dbg !2331
  %cmp44 = icmp eq i32 %51, 2, !dbg !2332
  br i1 %cmp44, label %if.then45, label %if.else48, !dbg !2333

if.then45:                                        ; preds = %land.lhs.true42
  call void @llvm.dbg.declare(metadata i8** %report, metadata !2334, metadata !DIExpression()), !dbg !2336
  %call46 = call i8* @createLatencyReport(), !dbg !2337
  store i8* %call46, i8** %report, align 8, !dbg !2336
  %52 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2338
  %53 = load i8*, i8** %report, align 8, !dbg !2339
  %54 = load i8*, i8** %report, align 8, !dbg !2340
  %call47 = call i64 @sdslen(i8* %54), !dbg !2341
  call void @addReplyVerbatim(%struct.client* %52, i8* %53, i64 %call47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)), !dbg !2342
  %55 = load i8*, i8** %report, align 8, !dbg !2343
  call void @sdsfree(i8* %55), !dbg !2344
  br label %if.end106, !dbg !2345

if.else48:                                        ; preds = %land.lhs.true42, %if.else36
  %56 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2346
  %argv49 = getelementptr inbounds %struct.client, %struct.client* %56, i32 0, i32 10, !dbg !2348
  %57 = load %struct.redisObject**, %struct.redisObject*** %argv49, align 8, !dbg !2348
  %arrayidx50 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %57, i64 1, !dbg !2346
  %58 = load %struct.redisObject*, %struct.redisObject** %arrayidx50, align 8, !dbg !2346
  %ptr51 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %58, i32 0, i32 2, !dbg !2349
  %59 = load i8*, i8** %ptr51, align 8, !dbg !2349
  %call52 = call i32 @strcasecmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0)) #7, !dbg !2350
  %tobool53 = icmp ne i32 %call52, 0, !dbg !2350
  br i1 %tobool53, label %if.else72, label %land.lhs.true54, !dbg !2351

land.lhs.true54:                                  ; preds = %if.else48
  %60 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2352
  %argc55 = getelementptr inbounds %struct.client, %struct.client* %60, i32 0, i32 9, !dbg !2353
  %61 = load i32, i32* %argc55, align 8, !dbg !2353
  %cmp56 = icmp sge i32 %61, 2, !dbg !2354
  br i1 %cmp56, label %if.then57, label %if.else72, !dbg !2355

if.then57:                                        ; preds = %land.lhs.true54
  %62 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2356
  %argc58 = getelementptr inbounds %struct.client, %struct.client* %62, i32 0, i32 9, !dbg !2359
  %63 = load i32, i32* %argc58, align 8, !dbg !2359
  %cmp59 = icmp eq i32 %63, 2, !dbg !2360
  br i1 %cmp59, label %if.then60, label %if.else62, !dbg !2361

if.then60:                                        ; preds = %if.then57
  %64 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2362
  %call61 = call i32 @latencyResetEvent(i8* null), !dbg !2364
  %conv = sext i32 %call61 to i64, !dbg !2364
  call void @addReplyLongLong(%struct.client* %64, i64 %conv), !dbg !2365
  br label %if.end71, !dbg !2366

if.else62:                                        ; preds = %if.then57
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2367, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.declare(metadata i32* %resets, metadata !2370, metadata !DIExpression()), !dbg !2371
  store i32 0, i32* %resets, align 4, !dbg !2371
  store i32 2, i32* %j, align 4, !dbg !2372
  br label %for.cond, !dbg !2374

for.cond:                                         ; preds = %for.inc, %if.else62
  %65 = load i32, i32* %j, align 4, !dbg !2375
  %66 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2377
  %argc63 = getelementptr inbounds %struct.client, %struct.client* %66, i32 0, i32 9, !dbg !2378
  %67 = load i32, i32* %argc63, align 8, !dbg !2378
  %cmp64 = icmp slt i32 %65, %67, !dbg !2379
  br i1 %cmp64, label %for.body, label %for.end, !dbg !2380

for.body:                                         ; preds = %for.cond
  %68 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2381
  %argv66 = getelementptr inbounds %struct.client, %struct.client* %68, i32 0, i32 10, !dbg !2382
  %69 = load %struct.redisObject**, %struct.redisObject*** %argv66, align 8, !dbg !2382
  %70 = load i32, i32* %j, align 4, !dbg !2383
  %idxprom = sext i32 %70 to i64, !dbg !2381
  %arrayidx67 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %69, i64 %idxprom, !dbg !2381
  %71 = load %struct.redisObject*, %struct.redisObject** %arrayidx67, align 8, !dbg !2381
  %ptr68 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %71, i32 0, i32 2, !dbg !2384
  %72 = load i8*, i8** %ptr68, align 8, !dbg !2384
  %call69 = call i32 @latencyResetEvent(i8* %72), !dbg !2385
  %73 = load i32, i32* %resets, align 4, !dbg !2386
  %add = add nsw i32 %73, %call69, !dbg !2386
  store i32 %add, i32* %resets, align 4, !dbg !2386
  br label %for.inc, !dbg !2387

for.inc:                                          ; preds = %for.body
  %74 = load i32, i32* %j, align 4, !dbg !2388
  %inc = add nsw i32 %74, 1, !dbg !2388
  store i32 %inc, i32* %j, align 4, !dbg !2388
  br label %for.cond, !dbg !2389, !llvm.loop !2390

for.end:                                          ; preds = %for.cond
  %75 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2392
  %76 = load i32, i32* %resets, align 4, !dbg !2393
  %conv70 = sext i32 %76 to i64, !dbg !2393
  call void @addReplyLongLong(%struct.client* %75, i64 %conv70), !dbg !2394
  br label %if.end71

if.end71:                                         ; preds = %for.end, %if.then60
  br label %if.end105, !dbg !2395

if.else72:                                        ; preds = %land.lhs.true54, %if.else48
  %77 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2396
  %argv73 = getelementptr inbounds %struct.client, %struct.client* %77, i32 0, i32 10, !dbg !2398
  %78 = load %struct.redisObject**, %struct.redisObject*** %argv73, align 8, !dbg !2398
  %arrayidx74 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %78, i64 1, !dbg !2396
  %79 = load %struct.redisObject*, %struct.redisObject** %arrayidx74, align 8, !dbg !2396
  %ptr75 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %79, i32 0, i32 2, !dbg !2399
  %80 = load i8*, i8** %ptr75, align 8, !dbg !2399
  %call76 = call i32 @strcasecmp(i8* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0)) #7, !dbg !2400
  %tobool77 = icmp ne i32 %call76, 0, !dbg !2400
  br i1 %tobool77, label %if.else91, label %land.lhs.true78, !dbg !2401

land.lhs.true78:                                  ; preds = %if.else72
  %81 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2402
  %argc79 = getelementptr inbounds %struct.client, %struct.client* %81, i32 0, i32 9, !dbg !2403
  %82 = load i32, i32* %argc79, align 8, !dbg !2403
  %cmp80 = icmp sge i32 %82, 2, !dbg !2404
  br i1 %cmp80, label %if.then82, label %if.else91, !dbg !2405

if.then82:                                        ; preds = %land.lhs.true78
  %83 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2406
  %argc83 = getelementptr inbounds %struct.client, %struct.client* %83, i32 0, i32 9, !dbg !2409
  %84 = load i32, i32* %argc83, align 8, !dbg !2409
  %cmp84 = icmp eq i32 %84, 2, !dbg !2410
  br i1 %cmp84, label %if.then86, label %if.else89, !dbg !2411

if.then86:                                        ; preds = %if.then82
  call void @llvm.dbg.declare(metadata i32* %command_with_data, metadata !2412, metadata !DIExpression()), !dbg !2414
  store i32 0, i32* %command_with_data, align 4, !dbg !2414
  call void @llvm.dbg.declare(metadata i8** %replylen, metadata !2415, metadata !DIExpression()), !dbg !2416
  %85 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2417
  %call87 = call i8* @addReplyDeferredLen(%struct.client* %85), !dbg !2418
  store i8* %call87, i8** %replylen, align 8, !dbg !2416
  %86 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2419
  %87 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 11), align 8, !dbg !2420
  call void @latencyAllCommandsFillCDF(%struct.client* %86, %struct.dict* %87, i32* %command_with_data), !dbg !2421
  %88 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2422
  %89 = load i8*, i8** %replylen, align 8, !dbg !2423
  %90 = load i32, i32* %command_with_data, align 4, !dbg !2424
  %conv88 = sext i32 %90 to i64, !dbg !2424
  call void @setDeferredMapLen(%struct.client* %88, i8* %89, i64 %conv88), !dbg !2425
  br label %if.end90, !dbg !2426

if.else89:                                        ; preds = %if.then82
  %91 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2427
  call void @latencySpecificCommandsFillCDF(%struct.client* %91), !dbg !2429
  br label %if.end90

if.end90:                                         ; preds = %if.else89, %if.then86
  br label %if.end104, !dbg !2430

if.else91:                                        ; preds = %land.lhs.true78, %if.else72
  %92 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2431
  %argv92 = getelementptr inbounds %struct.client, %struct.client* %92, i32 0, i32 10, !dbg !2433
  %93 = load %struct.redisObject**, %struct.redisObject*** %argv92, align 8, !dbg !2433
  %arrayidx93 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %93, i64 1, !dbg !2431
  %94 = load %struct.redisObject*, %struct.redisObject** %arrayidx93, align 8, !dbg !2431
  %ptr94 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %94, i32 0, i32 2, !dbg !2434
  %95 = load i8*, i8** %ptr94, align 8, !dbg !2434
  %call95 = call i32 @strcasecmp(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0)) #7, !dbg !2435
  %tobool96 = icmp ne i32 %call95, 0, !dbg !2435
  br i1 %tobool96, label %if.else102, label %land.lhs.true97, !dbg !2436

land.lhs.true97:                                  ; preds = %if.else91
  %96 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2437
  %argc98 = getelementptr inbounds %struct.client, %struct.client* %96, i32 0, i32 9, !dbg !2438
  %97 = load i32, i32* %argc98, align 8, !dbg !2438
  %cmp99 = icmp eq i32 %97, 2, !dbg !2439
  br i1 %cmp99, label %if.then101, label %if.else102, !dbg !2440

if.then101:                                       ; preds = %land.lhs.true97
  call void @llvm.dbg.declare(metadata [15 x i8*]* %help, metadata !2441, metadata !DIExpression()), !dbg !2446
  %98 = bitcast [15 x i8*]* %help to i8*, !dbg !2446
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %98, i8* align 16 bitcast ([15 x i8*]* @__const.latencyCommand.help to i8*), i64 120, i1 false), !dbg !2446
  %99 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2447
  %arraydecay = getelementptr inbounds [15 x i8*], [15 x i8*]* %help, i64 0, i64 0, !dbg !2448
  call void @addReplyHelp(%struct.client* %99, i8** %arraydecay), !dbg !2449
  br label %if.end103, !dbg !2450

if.else102:                                       ; preds = %land.lhs.true97, %if.else91
  %100 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2451
  call void @addReplySubcommandSyntaxError(%struct.client* %100), !dbg !2453
  br label %if.end103

if.end103:                                        ; preds = %if.else102, %if.then101
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.end90
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.end71
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then45
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then35
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end23
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end
  br label %return, !dbg !2454

nodataerr:                                        ; preds = %if.then22
  call void @llvm.dbg.label(metadata !2455), !dbg !2456
  %101 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2457
  %102 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2458
  %argv110 = getelementptr inbounds %struct.client, %struct.client* %102, i32 0, i32 10, !dbg !2459
  %103 = load %struct.redisObject**, %struct.redisObject*** %argv110, align 8, !dbg !2459
  %arrayidx111 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %103, i64 2, !dbg !2458
  %104 = load %struct.redisObject*, %struct.redisObject** %arrayidx111, align 8, !dbg !2458
  %ptr112 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %104, i32 0, i32 2, !dbg !2460
  %105 = load i8*, i8** %ptr112, align 8, !dbg !2460
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %101, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.73, i64 0, i64 0), i8* %105), !dbg !2461
  br label %return, !dbg !2462

return:                                           ; preds = %nodataerr, %if.end109
  ret void, !dbg !2462
}

declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) #3

declare dso_local void @addReplyVerbatim(%struct.client*, i8*, i64, i8*) #3

declare dso_local void @sdsfree(i8*) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local void @addReplyHelp(%struct.client*, i8**) #3

declare dso_local void @addReplySubcommandSyntaxError(%struct.client*) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!703, !704, !705, !706, !707}
!llvm.ident = !{!708}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "latencyTimeSeriesDictType", scope: !2, file: !3, line: 50, type: !270, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !59, globals: !702, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "latency.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!4 = !{!5, !15, !36, !42, !48}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 42, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./connection.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "CONN_STATE_NONE", value: 0)
!10 = !DIEnumerator(name: "CONN_STATE_CONNECTING", value: 1)
!11 = !DIEnumerator(name: "CONN_STATE_ACCEPTING", value: 2)
!12 = !DIEnumerator(name: "CONN_STATE_CONNECTED", value: 3)
!13 = !DIEnumerator(name: "CONN_STATE_CLOSED", value: 4)
!14 = !DIEnumerator(name: "CONN_STATE_ERROR", value: 5)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 2116, baseType: !7, size: 32, elements: !17)
!16 = !DIFile(filename: "./server.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!18 = !DIEnumerator(name: "COMMAND_GROUP_GENERIC", value: 0)
!19 = !DIEnumerator(name: "COMMAND_GROUP_STRING", value: 1)
!20 = !DIEnumerator(name: "COMMAND_GROUP_LIST", value: 2)
!21 = !DIEnumerator(name: "COMMAND_GROUP_SET", value: 3)
!22 = !DIEnumerator(name: "COMMAND_GROUP_SORTED_SET", value: 4)
!23 = !DIEnumerator(name: "COMMAND_GROUP_HASH", value: 5)
!24 = !DIEnumerator(name: "COMMAND_GROUP_PUBSUB", value: 6)
!25 = !DIEnumerator(name: "COMMAND_GROUP_TRANSACTIONS", value: 7)
!26 = !DIEnumerator(name: "COMMAND_GROUP_CONNECTION", value: 8)
!27 = !DIEnumerator(name: "COMMAND_GROUP_SERVER", value: 9)
!28 = !DIEnumerator(name: "COMMAND_GROUP_SCRIPTING", value: 10)
!29 = !DIEnumerator(name: "COMMAND_GROUP_HYPERLOGLOG", value: 11)
!30 = !DIEnumerator(name: "COMMAND_GROUP_CLUSTER", value: 12)
!31 = !DIEnumerator(name: "COMMAND_GROUP_SENTINEL", value: 13)
!32 = !DIEnumerator(name: "COMMAND_GROUP_GEO", value: 14)
!33 = !DIEnumerator(name: "COMMAND_GROUP_STREAM", value: 15)
!34 = !DIEnumerator(name: "COMMAND_GROUP_BITMAP", value: 16)
!35 = !DIEnumerator(name: "COMMAND_GROUP_MODULE", value: 17)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 1989, baseType: !7, size: 32, elements: !37)
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "KSPEC_BS_INVALID", value: 0)
!39 = !DIEnumerator(name: "KSPEC_BS_UNKNOWN", value: 1)
!40 = !DIEnumerator(name: "KSPEC_BS_INDEX", value: 2)
!41 = !DIEnumerator(name: "KSPEC_BS_KEYWORD", value: 3)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 1997, baseType: !7, size: 32, elements: !43)
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "KSPEC_FK_INVALID", value: 0)
!45 = !DIEnumerator(name: "KSPEC_FK_UNKNOWN", value: 1)
!46 = !DIEnumerator(name: "KSPEC_FK_RANGE", value: 2)
!47 = !DIEnumerator(name: "KSPEC_FK_KEYNUM", value: 3)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 2054, baseType: !7, size: 32, elements: !49)
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58}
!50 = !DIEnumerator(name: "ARG_TYPE_STRING", value: 0)
!51 = !DIEnumerator(name: "ARG_TYPE_INTEGER", value: 1)
!52 = !DIEnumerator(name: "ARG_TYPE_DOUBLE", value: 2)
!53 = !DIEnumerator(name: "ARG_TYPE_KEY", value: 3)
!54 = !DIEnumerator(name: "ARG_TYPE_PATTERN", value: 4)
!55 = !DIEnumerator(name: "ARG_TYPE_UNIX_TIME", value: 5)
!56 = !DIEnumerator(name: "ARG_TYPE_PURE_TOKEN", value: 6)
!57 = !DIEnumerator(name: "ARG_TYPE_ONEOF", value: 7)
!58 = !DIEnumerator(name: "ARG_TYPE_BLOCK", value: 8)
!59 = !{!60, !61, !66, !67, !68, !69, !70, !238, !668, !678, !688, !695}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !62, line: 27, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !64, line: 44, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!65 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!66 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!68 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !16, line: 2233, size: 4224, elements: !72)
!72 = !{!73, !77, !78, !79, !80, !82, !83, !84, !86, !93, !95, !544, !545, !546, !547, !587, !609, !610, !625, !626, !627, !628, !629, !630, !631, !655, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "declared_name", scope: !71, file: !16, line: 2235, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !71, file: !16, line: 2237, baseType: !74, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "complexity", scope: !71, file: !16, line: 2238, baseType: !74, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !71, file: !16, line: 2239, baseType: !74, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "doc_flags", scope: !71, file: !16, line: 2240, baseType: !81, size: 32, offset: 256)
!81 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "replaced_by", scope: !71, file: !16, line: 2241, baseType: !74, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !71, file: !16, line: 2242, baseType: !74, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !71, file: !16, line: 2243, baseType: !85, size: 32, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandGroup", file: !16, line: 2135, baseType: !15)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !71, file: !16, line: 2244, baseType: !87, size: 64, offset: 512)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "commandHistory", file: !16, line: 2113, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 2110, size: 128, elements: !90)
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !89, file: !16, line: 2111, baseType: !74, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !89, file: !16, line: 2112, baseType: !74, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "tips", scope: !71, file: !16, line: 2245, baseType: !94, size: 64, offset: 576)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !71, file: !16, line: 2246, baseType: !96, size: 64, offset: 640)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !16, line: 2137, baseType: !98)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !100}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !16, line: 1199, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !16, line: 1089, size: 5952, elements: !103)
!103 = !{!104, !108, !109, !256, !257, !371, !381, !384, !385, !386, !387, !389, !390, !391, !392, !393, !394, !395, !396, !408, !409, !410, !411, !412, !413, !414, !415, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !445, !446, !447, !448, !449, !467, !468, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !504, !505, !506, !507, !527, !528, !529, !530, !537, !538, !539, !540, !541, !542, !543}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !102, file: !16, line: 1090, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !106, line: 27, baseType: !107)
!106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !64, line: 45, baseType: !66)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !16, line: 1091, baseType: !105, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !102, file: !16, line: 1092, baseType: !110, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !6, line: 40, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !6, line: 77, size: 512, elements: !113)
!113 = !{!114, !245, !247, !249, !250, !251, !252, !253, !254, !255}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !6, line: 78, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !6, line: 75, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !6, line: 59, size: 960, elements: !118)
!118 = !{!119, !181, !190, !198, !209, !213, !214, !218, !222, !223, !227, !231, !239, !240, !241}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !117, file: !6, line: 60, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !123, !81, !60, !81}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !125, line: 99, size: 640, elements: !126)
!125 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!126 = !{!127, !128, !129, !130, !141, !148, !172, !173, !174, !179, !180}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !124, file: !125, line: 100, baseType: !81, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !124, file: !125, line: 101, baseType: !81, size: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !124, file: !125, line: 102, baseType: !69, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !124, file: !125, line: 103, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !125, line: 77, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !125, line: 72, size: 256, elements: !134)
!134 = !{!135, !136, !139, !140}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !133, file: !125, line: 73, baseType: !81, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !133, file: !125, line: 74, baseType: !137, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !125, line: 66, baseType: !121)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !133, file: !125, line: 75, baseType: !137, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !133, file: !125, line: 76, baseType: !60, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !124, file: !125, line: 104, baseType: !142, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !125, line: 96, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !125, line: 93, size: 64, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !144, file: !125, line: 94, baseType: !81, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !144, file: !125, line: 95, baseType: !81, size: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !124, file: !125, line: 105, baseType: !149, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !125, line: 90, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !125, line: 80, size: 512, elements: !152)
!152 = !{!153, !154, !157, !162, !167, !168, !170, !171}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !151, file: !125, line: 81, baseType: !69, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !151, file: !125, line: 82, baseType: !155, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !156, line: 22, baseType: !105)
!156 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!157 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !151, file: !125, line: 83, baseType: !158, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !125, line: 67, baseType: !160)
!160 = !DISubroutineType(types: !161)
!161 = !{!81, !123, !69, !60}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !151, file: !125, line: 84, baseType: !163, size: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !125, line: 68, baseType: !165)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !123, !60}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !151, file: !125, line: 85, baseType: !60, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !151, file: !125, line: 86, baseType: !169, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !125, line: 87, baseType: !169, size: 64, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !151, file: !125, line: 88, baseType: !81, size: 32, offset: 448)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !124, file: !125, line: 106, baseType: !81, size: 32, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !124, file: !125, line: 107, baseType: !60, size: 64, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !124, file: !125, line: 108, baseType: !175, size: 64, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !125, line: 69, baseType: !177)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !123}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !124, file: !125, line: 109, baseType: !175, size: 64, offset: 512)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !125, line: 110, baseType: !81, size: 32, offset: 576)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !117, file: !6, line: 61, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!81, !185, !74, !81, !74, !186}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !6, line: 57, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !185}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !117, file: !6, line: 62, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!81, !185, !194, !196}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !197, line: 46, baseType: !66)
!197 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!198 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !117, file: !6, line: 63, baseType: !199, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!81, !185, !202, !81}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !205, line: 26, size: 128, elements: !206)
!205 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "")
!206 = !{!207, !208}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !204, file: !205, line: 28, baseType: !60, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !204, file: !205, line: 29, baseType: !196, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !117, file: !6, line: 64, baseType: !210, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!81, !185, !60, !196}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !117, file: !6, line: 65, baseType: !187, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !117, file: !6, line: 66, baseType: !215, size: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!81, !185, !186}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !117, file: !6, line: 67, baseType: !219, size: 64, offset: 448)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!81, !185, !186, !81}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !117, file: !6, line: 68, baseType: !215, size: 64, offset: 512)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !117, file: !6, line: 69, baseType: !224, size: 64, offset: 576)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!74, !185}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !117, file: !6, line: 70, baseType: !228, size: 64, offset: 640)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!81, !185, !74, !81, !69}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !117, file: !6, line: 71, baseType: !232, size: 64, offset: 704)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !185, !238, !235, !69}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !236, line: 108, baseType: !237)
!236 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !64, line: 194, baseType: !65)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !117, file: !6, line: 72, baseType: !232, size: 64, offset: 768)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !117, file: !6, line: 73, baseType: !232, size: 64, offset: 832)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !117, file: !6, line: 74, baseType: !242, size: 64, offset: 896)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!81, !185}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !112, file: !6, line: 79, baseType: !246, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !6, line: 49, baseType: !5)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !6, line: 80, baseType: !248, size: 16, offset: 96)
!248 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !112, file: !6, line: 81, baseType: !248, size: 16, offset: 112)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !112, file: !6, line: 82, baseType: !81, size: 32, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !112, file: !6, line: 83, baseType: !60, size: 64, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !112, file: !6, line: 84, baseType: !186, size: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !112, file: !6, line: 85, baseType: !186, size: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !112, file: !6, line: 86, baseType: !186, size: 64, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !112, file: !6, line: 87, baseType: !81, size: 32, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !102, file: !16, line: 1093, baseType: !81, size: 32, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !102, file: !16, line: 1094, baseType: !258, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !16, line: 933, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !16, line: 922, size: 640, elements: !261)
!261 = !{!262, !331, !332, !333, !334, !335, !336, !337, !338, !367}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !260, file: !16, line: 923, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !265, line: 61, baseType: !266)
!265 = !DIFile(filename: "./dict.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !265, line: 79, size: 448, elements: !267)
!267 = !{!268, !299, !322, !324, !325, !328}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !266, file: !265, line: 80, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !265, line: 74, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !265, line: 63, size: 512, elements: !272)
!272 = !{!273, !277, !281, !282, !286, !290, !291, !295}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !271, file: !265, line: 64, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!105, !194}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !271, file: !265, line: 65, baseType: !278, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!60, !263, !194}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !271, file: !265, line: 66, baseType: !278, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !271, file: !265, line: 67, baseType: !283, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!81, !263, !194, !194}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !271, file: !265, line: 68, baseType: !287, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !263, !60}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !271, file: !265, line: 69, baseType: !287, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "expandAllowed", scope: !271, file: !265, line: 70, baseType: !292, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!81, !196, !67}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "dictEntryMetadataBytes", scope: !271, file: !265, line: 73, baseType: !296, size: 64, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!196, !263}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ht_table", scope: !266, file: !265, line: 82, baseType: !300, size: 128, offset: 64)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 128, elements: !320)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !265, line: 59, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !265, line: 47, size: 192, elements: !305)
!305 = !{!306, !307, !314, !316}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !304, file: !265, line: 48, baseType: !60, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !304, file: !265, line: 54, baseType: !308, size: 64, offset: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !265, line: 49, size: 64, elements: !309)
!309 = !{!310, !311, !312, !313}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !308, file: !265, line: 50, baseType: !60, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !308, file: !265, line: 51, baseType: !105, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !308, file: !265, line: 52, baseType: !61, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !308, file: !265, line: 53, baseType: !67, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !265, line: 55, baseType: !315, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !304, file: !265, line: 56, baseType: !317, offset: 192)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: -1)
!320 = !{!321}
!321 = !DISubrange(count: 2)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "ht_used", scope: !266, file: !265, line: 83, baseType: !323, size: 128, offset: 192)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 128, elements: !320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !266, file: !265, line: 85, baseType: !65, size: 64, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pauserehash", scope: !266, file: !265, line: 88, baseType: !326, size: 16, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !62, line: 25, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !64, line: 39, baseType: !248)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ht_size_exp", scope: !266, file: !265, line: 89, baseType: !329, size: 16, offset: 400)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 16, elements: !320)
!330 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !260, file: !16, line: 924, baseType: !263, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !260, file: !16, line: 925, baseType: !263, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !260, file: !16, line: 926, baseType: !263, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !260, file: !16, line: 927, baseType: !263, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !260, file: !16, line: 928, baseType: !81, size: 32, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !260, file: !16, line: 929, baseType: !69, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "expires_cursor", scope: !260, file: !16, line: 930, baseType: !66, size: 64, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !260, file: !16, line: 931, baseType: !339, size: 64, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !341, line: 54, baseType: !342)
!341 = !DIFile(filename: "./adlist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !341, line: 47, size: 384, elements: !343)
!343 = !{!344, !353, !354, !358, !362, !366}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !342, file: !341, line: 48, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !341, line: 40, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !341, line: 36, size: 192, elements: !348)
!348 = !{!349, !351, !352}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !347, file: !341, line: 37, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !341, line: 38, baseType: !350, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !347, file: !341, line: 39, baseType: !60, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !342, file: !341, line: 49, baseType: !345, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !342, file: !341, line: 50, baseType: !355, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!60, !60}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !342, file: !341, line: 51, baseType: !359, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !60}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !342, file: !341, line: 52, baseType: !363, size: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!81, !60, !60}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !342, file: !341, line: 53, baseType: !66, size: 64, offset: 320)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "slots_to_keys", scope: !260, file: !16, line: 932, baseType: !368, size: 64, offset: 576)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "clusterSlotToKeyMapping", file: !16, line: 917, baseType: !370)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "clusterSlotToKeyMapping", file: !16, line: 917, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !16, line: 1095, baseType: !372, size: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !16, line: 862, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !16, line: 854, size: 128, elements: !375)
!375 = !{!376, !377, !378, !379, !380}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !374, file: !16, line: 855, baseType: !7, size: 4, flags: DIFlagBitField, extraData: i64 0)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !374, file: !16, line: 856, baseType: !7, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !374, file: !16, line: 857, baseType: !7, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !374, file: !16, line: 860, baseType: !81, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !374, file: !16, line: 861, baseType: !60, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !102, file: !16, line: 1096, baseType: !382, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !383, line: 43, baseType: !238)
!383 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!384 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !102, file: !16, line: 1097, baseType: !196, size: 64, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !102, file: !16, line: 1098, baseType: !196, size: 64, offset: 512)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !102, file: !16, line: 1099, baseType: !81, size: 32, offset: 576)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !102, file: !16, line: 1100, baseType: !388, size: 64, offset: 640)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !102, file: !16, line: 1101, baseType: !81, size: 32, offset: 704)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "original_argc", scope: !102, file: !16, line: 1102, baseType: !81, size: 32, offset: 736)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "original_argv", scope: !102, file: !16, line: 1103, baseType: !388, size: 64, offset: 768)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sum", scope: !102, file: !16, line: 1104, baseType: !196, size: 64, offset: 832)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !102, file: !16, line: 1105, baseType: !70, size: 64, offset: 896)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !102, file: !16, line: 1105, baseType: !70, size: 64, offset: 960)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "realcmd", scope: !102, file: !16, line: 1106, baseType: !70, size: 64, offset: 1024)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !102, file: !16, line: 1109, baseType: !397, size: 64, offset: 1088)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "user", file: !16, line: 1057, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1049, size: 320, elements: !400)
!400 = !{!401, !402, !405, !406, !407}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !399, file: !16, line: 1050, baseType: !382, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !399, file: !16, line: 1051, baseType: !403, size: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !106, line: 26, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !64, line: 42, baseType: !7)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "passwords", scope: !399, file: !16, line: 1052, baseType: !339, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "selectors", scope: !399, file: !16, line: 1053, baseType: !339, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "acl_string", scope: !399, file: !16, line: 1056, baseType: !372, size: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !102, file: !16, line: 1112, baseType: !81, size: 32, offset: 1152)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !102, file: !16, line: 1113, baseType: !81, size: 32, offset: 1184)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !102, file: !16, line: 1114, baseType: !65, size: 64, offset: 1216)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !102, file: !16, line: 1115, baseType: !339, size: 64, offset: 1280)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !102, file: !16, line: 1116, baseType: !68, size: 64, offset: 1344)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_reply_errors", scope: !102, file: !16, line: 1117, baseType: !339, size: 64, offset: 1408)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !102, file: !16, line: 1118, baseType: !196, size: 64, offset: 1472)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !102, file: !16, line: 1120, baseType: !416, size: 64, offset: 1536)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !417, line: 10, baseType: !418)
!417 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !64, line: 160, baseType: !65)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !102, file: !16, line: 1121, baseType: !65, size: 64, offset: 1600)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !102, file: !16, line: 1122, baseType: !81, size: 32, offset: 1664)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "cur_script", scope: !102, file: !16, line: 1123, baseType: !302, size: 64, offset: 1728)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !102, file: !16, line: 1124, baseType: !416, size: 64, offset: 1792)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !102, file: !16, line: 1125, baseType: !416, size: 64, offset: 1856)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !102, file: !16, line: 1126, baseType: !81, size: 32, offset: 1920)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !102, file: !16, line: 1127, baseType: !81, size: 32, offset: 1952)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "repl_start_cmd_stream_on_ack", scope: !102, file: !16, line: 1128, baseType: !81, size: 32, offset: 1984)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !102, file: !16, line: 1129, baseType: !81, size: 32, offset: 2016)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !102, file: !16, line: 1130, baseType: !429, size: 64, offset: 2048)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !430, line: 58, baseType: !431)
!430 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !64, line: 153, baseType: !65)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !102, file: !16, line: 1131, baseType: !429, size: 64, offset: 2112)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !102, file: !16, line: 1132, baseType: !382, size: 64, offset: 2176)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !102, file: !16, line: 1133, baseType: !69, size: 64, offset: 2240)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !102, file: !16, line: 1134, baseType: !69, size: 64, offset: 2304)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "repl_applied", scope: !102, file: !16, line: 1135, baseType: !69, size: 64, offset: 2368)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !102, file: !16, line: 1136, baseType: !69, size: 64, offset: 2432)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !102, file: !16, line: 1137, baseType: !69, size: 64, offset: 2496)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "repl_last_partial_write", scope: !102, file: !16, line: 1138, baseType: !69, size: 64, offset: 2560)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !102, file: !16, line: 1139, baseType: !69, size: 64, offset: 2624)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !102, file: !16, line: 1142, baseType: !442, size: 328, offset: 2688)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 328, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 41)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !102, file: !16, line: 1143, baseType: !81, size: 32, offset: 3040)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "slave_addr", scope: !102, file: !16, line: 1144, baseType: !238, size: 64, offset: 3072)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !102, file: !16, line: 1145, baseType: !81, size: 32, offset: 3136)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "slave_req", scope: !102, file: !16, line: 1146, baseType: !81, size: 32, offset: 3168)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !102, file: !16, line: 1147, baseType: !450, size: 320, offset: 3200)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !16, line: 967, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !16, line: 956, size: 320, elements: !452)
!452 = !{!453, !462, !463, !464, !465, !466}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !451, file: !16, line: 957, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !16, line: 954, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !16, line: 949, size: 192, elements: !457)
!457 = !{!458, !459, !460, !461}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !456, file: !16, line: 950, baseType: !388, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !456, file: !16, line: 951, baseType: !81, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !456, file: !16, line: 952, baseType: !81, size: 32, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !456, file: !16, line: 953, baseType: !70, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !451, file: !16, line: 958, baseType: !81, size: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !451, file: !16, line: 959, baseType: !81, size: 32, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_inv_flags", scope: !451, file: !16, line: 962, baseType: !81, size: 32, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sums", scope: !451, file: !16, line: 965, baseType: !196, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_count", scope: !451, file: !16, line: 966, baseType: !81, size: 32, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !102, file: !16, line: 1148, baseType: !81, size: 32, offset: 3520)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !102, file: !16, line: 1149, baseType: !469, size: 704, offset: 3584)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !16, line: 1003, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !16, line: 971, size: 704, elements: !471)
!471 = !{!472, !473, !475, !476, !477, !482, !483, !484, !485, !486, !487, !488}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !470, file: !16, line: 973, baseType: !65, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !470, file: !16, line: 974, baseType: !474, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !16, line: 64, baseType: !69)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !470, file: !16, line: 978, baseType: !263, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !470, file: !16, line: 980, baseType: !372, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "blockpos", scope: !470, file: !16, line: 985, baseType: !478, size: 64, offset: 256)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockPos", file: !16, line: 982, size: 64, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "wherefrom", scope: !478, file: !16, line: 983, baseType: !81, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "whereto", scope: !478, file: !16, line: 984, baseType: !81, size: 32, offset: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !470, file: !16, line: 990, baseType: !196, size: 64, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !470, file: !16, line: 991, baseType: !372, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !470, file: !16, line: 992, baseType: !372, size: 64, offset: 448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !470, file: !16, line: 993, baseType: !81, size: 32, offset: 512)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !470, file: !16, line: 996, baseType: !81, size: 32, offset: 544)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !470, file: !16, line: 997, baseType: !69, size: 64, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !470, file: !16, line: 1000, baseType: !60, size: 64, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !102, file: !16, line: 1150, baseType: !69, size: 64, offset: 4288)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !102, file: !16, line: 1151, baseType: !339, size: 64, offset: 4352)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !102, file: !16, line: 1152, baseType: !263, size: 64, offset: 4416)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !102, file: !16, line: 1153, baseType: !339, size: 64, offset: 4480)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "pubsubshard_channels", scope: !102, file: !16, line: 1154, baseType: !263, size: 64, offset: 4544)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !102, file: !16, line: 1155, baseType: !382, size: 64, offset: 4608)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sockname", scope: !102, file: !16, line: 1156, baseType: !382, size: 64, offset: 4672)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !102, file: !16, line: 1157, baseType: !345, size: 64, offset: 4736)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_list_node", scope: !102, file: !16, line: 1158, baseType: !345, size: 64, offset: 4800)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_list_node", scope: !102, file: !16, line: 1159, baseType: !345, size: 64, offset: 4864)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback", scope: !102, file: !16, line: 1160, baseType: !500, size: 64, offset: 4928)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleUserChangedFunc", file: !16, line: 715, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !105, !60}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback_privdata", scope: !102, file: !16, line: 1163, baseType: !60, size: 64, offset: 4992)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "auth_module", scope: !102, file: !16, line: 1166, baseType: !60, size: 64, offset: 5056)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_redirection", scope: !102, file: !16, line: 1173, baseType: !105, size: 64, offset: 5120)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_prefixes", scope: !102, file: !16, line: 1174, baseType: !508, size: 64, offset: 5184)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !510, line: 137, baseType: !511)
!510 = !DIFile(filename: "./rax.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !510, line: 133, size: 192, elements: !512)
!512 = !{!513, !525, !526}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !511, file: !510, line: 134, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !510, line: 131, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !510, line: 98, size: 32, elements: !517)
!517 = !{!518, !519, !520, !521, !522}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !516, file: !510, line: 99, baseType: !403, size: 1, flags: DIFlagBitField, extraData: i64 0)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !516, file: !510, line: 100, baseType: !403, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !516, file: !510, line: 101, baseType: !403, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !516, file: !510, line: 102, baseType: !403, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !516, file: !510, line: 130, baseType: !523, offset: 32)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, elements: !318)
!524 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !511, file: !510, line: 135, baseType: !105, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !511, file: !510, line: 136, baseType: !105, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_usage", scope: !102, file: !16, line: 1182, baseType: !196, size: 64, offset: 5248)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_type", scope: !102, file: !16, line: 1183, baseType: !81, size: 32, offset: 5312)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket_node", scope: !102, file: !16, line: 1185, baseType: !345, size: 64, offset: 5376)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket", scope: !102, file: !16, line: 1186, baseType: !531, size: 64, offset: 5440)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientMemUsageBucket", file: !16, line: 1087, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1084, size: 128, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !533, file: !16, line: 1085, baseType: !339, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_sum", scope: !533, file: !16, line: 1086, baseType: !196, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ref_repl_buf_node", scope: !102, file: !16, line: 1188, baseType: !345, size: 64, offset: 5504)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ref_block_pos", scope: !102, file: !16, line: 1190, baseType: !196, size: 64, offset: 5568)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak", scope: !102, file: !16, line: 1194, baseType: !196, size: 64, offset: 5632)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak_last_reset_time", scope: !102, file: !16, line: 1195, baseType: !474, size: 64, offset: 5696)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !102, file: !16, line: 1196, baseType: !81, size: 32, offset: 5760)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "buf_usable_size", scope: !102, file: !16, line: 1197, baseType: !196, size: 64, offset: 5824)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !102, file: !16, line: 1198, baseType: !238, size: 64, offset: 5888)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !71, file: !16, line: 2247, baseType: !81, size: 32, offset: 704)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !71, file: !16, line: 2248, baseType: !105, size: 64, offset: 768)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "acl_categories", scope: !71, file: !16, line: 2249, baseType: !105, size: 64, offset: 832)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_static", scope: !71, file: !16, line: 2250, baseType: !548, size: 1792, offset: 896)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 1792, elements: !585)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "keySpec", file: !16, line: 2048, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 2004, size: 448, elements: !551)
!551 = !{!552, !553, !554, !556, !568, !570}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !550, file: !16, line: 2006, baseType: !74, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !550, file: !16, line: 2007, baseType: !105, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "begin_search_type", scope: !550, file: !16, line: 2008, baseType: !555, size: 32, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_bs_type", file: !16, line: 1994, baseType: !36)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !550, file: !16, line: 2022, baseType: !557, size: 128, offset: 192)
!557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !550, file: !16, line: 2009, size: 128, elements: !558)
!558 = !{!559, !563}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !557, file: !16, line: 2013, baseType: !560, size: 32)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !557, file: !16, line: 2010, size: 32, elements: !561)
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !560, file: !16, line: 2012, baseType: !81, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !557, file: !16, line: 2021, baseType: !564, size: 128)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !557, file: !16, line: 2014, size: 128, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !564, file: !16, line: 2016, baseType: !74, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "startfrom", scope: !564, file: !16, line: 2020, baseType: !81, size: 32, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "find_keys_type", scope: !550, file: !16, line: 2023, baseType: !569, size: 32, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_fk_type", file: !16, line: 2002, baseType: !42)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "fk", scope: !550, file: !16, line: 2047, baseType: !571, size: 96, offset: 352)
!571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !550, file: !16, line: 2024, size: 96, elements: !572)
!572 = !{!573, !579}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !571, file: !16, line: 2037, baseType: !574, size: 96)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !571, file: !16, line: 2027, size: 96, elements: !575)
!575 = !{!576, !577, !578}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !574, file: !16, line: 2031, baseType: !81, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !574, file: !16, line: 2033, baseType: !81, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !574, file: !16, line: 2036, baseType: !81, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "keynum", scope: !571, file: !16, line: 2046, baseType: !580, size: 96)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !571, file: !16, line: 2038, size: 96, elements: !581)
!581 = !{!582, !583, !584}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "keynumidx", scope: !580, file: !16, line: 2040, baseType: !81, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !580, file: !16, line: 2043, baseType: !81, size: 32, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !580, file: !16, line: 2045, baseType: !81, size: 32, offset: 64)
!585 = !{!586}
!586 = !DISubrange(count: 4)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !71, file: !16, line: 2253, baseType: !588, size: 64, offset: 2688)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !16, line: 2138, baseType: !590)
!590 = !DISubroutineType(types: !591)
!591 = !{!81, !70, !388, !81, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "getKeysResult", file: !16, line: 1966, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1961, size: 16512, elements: !595)
!595 = !{!596, !605, !607, !608}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "keysbuf", scope: !594, file: !16, line: 1962, baseType: !597, size: 16384)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 16384, elements: !603)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "keyReference", file: !16, line: 1955, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1951, size: 64, elements: !600)
!600 = !{!601, !602}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !599, file: !16, line: 1952, baseType: !81, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !16, line: 1953, baseType: !81, size: 32, offset: 32)
!603 = !{!604}
!604 = !DISubrange(count: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !594, file: !16, line: 1963, baseType: !606, size: 64, offset: 16384)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "numkeys", scope: !594, file: !16, line: 1964, baseType: !81, size: 32, offset: 16448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !594, file: !16, line: 1965, baseType: !81, size: 32, offset: 16480)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands", scope: !71, file: !16, line: 2255, baseType: !70, size: 64, offset: 2752)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !71, file: !16, line: 2257, baseType: !611, size: 64, offset: 2816)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommandArg", file: !16, line: 2071, size: 576, elements: !613)
!613 = !{!614, !615, !617, !618, !619, !620, !621, !622, !623, !624}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !612, file: !16, line: 2072, baseType: !74, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !612, file: !16, line: 2073, baseType: !616, size: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandArgType", file: !16, line: 2064, baseType: !48)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "key_spec_index", scope: !612, file: !16, line: 2074, baseType: !81, size: 32, offset: 96)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !612, file: !16, line: 2075, baseType: !74, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !612, file: !16, line: 2076, baseType: !74, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !612, file: !16, line: 2077, baseType: !74, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !16, line: 2078, baseType: !81, size: 32, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !612, file: !16, line: 2079, baseType: !74, size: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "subargs", scope: !612, file: !16, line: 2080, baseType: !611, size: 64, offset: 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !612, file: !16, line: 2082, baseType: !81, size: 32, offset: 512)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !71, file: !16, line: 2260, baseType: !69, size: 64, offset: 2880)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !71, file: !16, line: 2260, baseType: !69, size: 64, offset: 2944)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rejected_calls", scope: !71, file: !16, line: 2260, baseType: !69, size: 64, offset: 3008)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "failed_calls", scope: !71, file: !16, line: 2260, baseType: !69, size: 64, offset: 3072)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !71, file: !16, line: 2261, baseType: !81, size: 32, offset: 3136)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !71, file: !16, line: 2266, baseType: !382, size: 64, offset: 3200)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "latency_histogram", scope: !71, file: !16, line: 2267, baseType: !632, size: 64, offset: 3264)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_histogram", file: !634, line: 17, size: 832, elements: !635)
!634 = !DIFile(filename: "../deps/hdr_histogram/hdr_histogram.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!635 = !{!636, !637, !638, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_discernible_value", scope: !633, file: !634, line: 19, baseType: !61, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "highest_trackable_value", scope: !633, file: !634, line: 20, baseType: !61, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "unit_magnitude", scope: !633, file: !634, line: 21, baseType: !639, size: 32, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !62, line: 26, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !64, line: 41, baseType: !81)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "significant_figures", scope: !633, file: !634, line: 22, baseType: !639, size: 32, offset: 160)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count_magnitude", scope: !633, file: !634, line: 23, baseType: !639, size: 32, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count", scope: !633, file: !634, line: 24, baseType: !639, size: 32, offset: 224)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_mask", scope: !633, file: !634, line: 25, baseType: !61, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_count", scope: !633, file: !634, line: 26, baseType: !639, size: 32, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_count", scope: !633, file: !634, line: 27, baseType: !639, size: 32, offset: 352)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !633, file: !634, line: 28, baseType: !61, size: 64, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !633, file: !634, line: 29, baseType: !61, size: 64, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "normalizing_index_offset", scope: !633, file: !634, line: 30, baseType: !639, size: 32, offset: 512)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "conversion_ratio", scope: !633, file: !634, line: 31, baseType: !67, size: 64, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "counts_len", scope: !633, file: !634, line: 32, baseType: !639, size: 32, offset: 640)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "total_count", scope: !633, file: !634, line: 33, baseType: !61, size: 64, offset: 704)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !633, file: !634, line: 34, baseType: !654, size: 64, offset: 768)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs", scope: !71, file: !16, line: 2268, baseType: !656, size: 64, offset: 3328)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_range_key_spec", scope: !71, file: !16, line: 2269, baseType: !549, size: 448, offset: 3392)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !71, file: !16, line: 2273, baseType: !81, size: 32, offset: 3840)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "num_history", scope: !71, file: !16, line: 2274, baseType: !81, size: 32, offset: 3872)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "num_tips", scope: !71, file: !16, line: 2275, baseType: !81, size: 32, offset: 3904)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_num", scope: !71, file: !16, line: 2276, baseType: !81, size: 32, offset: 3936)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_max", scope: !71, file: !16, line: 2277, baseType: !81, size: 32, offset: 3968)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands_dict", scope: !71, file: !16, line: 2278, baseType: !263, size: 64, offset: 4032)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !71, file: !16, line: 2280, baseType: !70, size: 64, offset: 4096)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "module_cmd", scope: !71, file: !16, line: 2281, baseType: !666, size: 64, offset: 4160)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCommand", file: !16, line: 685, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !383, line: 51, size: 24, elements: !670)
!670 = !{!671, !674, !675, !676}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !669, file: !383, line: 52, baseType: !672, size: 8)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !106, line: 24, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !64, line: 38, baseType: !524)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !669, file: !383, line: 53, baseType: !672, size: 8, offset: 8)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !669, file: !383, line: 54, baseType: !524, size: 8, offset: 16)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !669, file: !383, line: 55, baseType: !677, offset: 24)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, elements: !318)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !383, line: 57, size: 40, elements: !680)
!680 = !{!681, !685, !686, !687}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !679, file: !383, line: 58, baseType: !682, size: 16)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !106, line: 25, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !64, line: 40, baseType: !684)
!684 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !679, file: !383, line: 59, baseType: !682, size: 16, offset: 16)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !679, file: !383, line: 60, baseType: !524, size: 8, offset: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !679, file: !383, line: 61, baseType: !677, offset: 40)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !383, line: 63, size: 72, elements: !690)
!690 = !{!691, !692, !693, !694}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !689, file: !383, line: 64, baseType: !403, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !689, file: !383, line: 65, baseType: !403, size: 32, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !383, line: 66, baseType: !524, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !689, file: !383, line: 67, baseType: !677, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !383, line: 69, size: 136, elements: !697)
!697 = !{!698, !699, !700, !701}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !696, file: !383, line: 70, baseType: !105, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !696, file: !383, line: 71, baseType: !105, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !383, line: 72, baseType: !524, size: 8, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !696, file: !383, line: 73, baseType: !677, offset: 136)
!702 = !{!0}
!703 = !{i32 7, !"Dwarf Version", i32 4}
!704 = !{i32 2, !"Debug Info Version", i32 3}
!705 = !{i32 1, !"wchar_size", i32 4}
!706 = !{i32 7, !"uwtable", i32 1}
!707 = !{i32 7, !"frame-pointer", i32 2}
!708 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!709 = distinct !DISubprogram(name: "dictStringKeyCompare", scope: !3, file: !3, line: 39, type: !284, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !710)
!710 = !{}
!711 = !DILocalVariable(name: "d", arg: 1, scope: !709, file: !3, line: 39, type: !263)
!712 = !DILocation(line: 39, column: 32, scope: !709)
!713 = !DILocalVariable(name: "key1", arg: 2, scope: !709, file: !3, line: 39, type: !194)
!714 = !DILocation(line: 39, column: 47, scope: !709)
!715 = !DILocalVariable(name: "key2", arg: 3, scope: !709, file: !3, line: 39, type: !194)
!716 = !DILocation(line: 39, column: 65, scope: !709)
!717 = !DILocation(line: 40, column: 5, scope: !709)
!718 = !DILocation(line: 41, column: 19, scope: !709)
!719 = !DILocation(line: 41, column: 24, scope: !709)
!720 = !DILocation(line: 41, column: 12, scope: !709)
!721 = !DILocation(line: 41, column: 30, scope: !709)
!722 = !DILocation(line: 41, column: 5, scope: !709)
!723 = distinct !DISubprogram(name: "dictStringHash", scope: !3, file: !3, line: 44, type: !275, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !710)
!724 = !DILocalVariable(name: "key", arg: 1, scope: !723, file: !3, line: 44, type: !194)
!725 = !DILocation(line: 44, column: 37, scope: !723)
!726 = !DILocation(line: 45, column: 32, scope: !723)
!727 = !DILocation(line: 45, column: 44, scope: !723)
!728 = !DILocation(line: 45, column: 37, scope: !723)
!729 = !DILocation(line: 45, column: 12, scope: !723)
!730 = !DILocation(line: 45, column: 5, scope: !723)
!731 = distinct !DISubprogram(name: "THPGetAnonHugePagesSize", scope: !3, file: !3, line: 65, type: !732, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !710)
!732 = !DISubroutineType(types: !733)
!733 = !{!81}
!734 = !DILocation(line: 66, column: 12, scope: !731)
!735 = !DILocation(line: 66, column: 5, scope: !731)
!736 = distinct !DISubprogram(name: "latencyMonitorInit", scope: !3, file: !3, line: 74, type: !737, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !710)
!737 = !DISubroutineType(types: !738)
!738 = !{null}
!739 = !DILocation(line: 75, column: 29, scope: !736)
!740 = !DILocation(line: 75, column: 27, scope: !736)
!741 = !DILocation(line: 76, column: 1, scope: !736)
!742 = distinct !DISubprogram(name: "latencyAddSample", scope: !3, file: !3, line: 82, type: !743, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !710)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !74, !474}
!745 = !DILocalVariable(name: "event", arg: 1, scope: !742, file: !3, line: 82, type: !74)
!746 = !DILocation(line: 82, column: 35, scope: !742)
!747 = !DILocalVariable(name: "latency", arg: 2, scope: !742, file: !3, line: 82, type: !474)
!748 = !DILocation(line: 82, column: 51, scope: !742)
!749 = !DILocalVariable(name: "ts", scope: !742, file: !3, line: 83, type: !750)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latencyTimeSeries", file: !752, line: 47, size: 10304, elements: !753)
!752 = !DIFile(filename: "./latency.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!753 = !{!754, !755, !756}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !751, file: !752, line: 48, baseType: !81, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !751, file: !752, line: 49, baseType: !403, size: 32, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "samples", scope: !751, file: !752, line: 50, baseType: !757, size: 10240, offset: 64)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 10240, elements: !762)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latencySample", file: !752, line: 41, size: 64, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !758, file: !752, line: 42, baseType: !639, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !758, file: !752, line: 43, baseType: !403, size: 32, offset: 32)
!762 = !{!763}
!763 = !DISubrange(count: 160)
!764 = !DILocation(line: 83, column: 31, scope: !742)
!765 = !DILocation(line: 83, column: 58, scope: !742)
!766 = !DILocation(line: 83, column: 73, scope: !742)
!767 = !DILocation(line: 83, column: 36, scope: !742)
!768 = !DILocalVariable(name: "now", scope: !742, file: !3, line: 84, type: !416)
!769 = !DILocation(line: 84, column: 12, scope: !742)
!770 = !DILocation(line: 84, column: 18, scope: !742)
!771 = !DILocalVariable(name: "prev", scope: !742, file: !3, line: 85, type: !81)
!772 = !DILocation(line: 85, column: 9, scope: !742)
!773 = !DILocation(line: 88, column: 9, scope: !774)
!774 = distinct !DILexicalBlock(scope: !742, file: !3, line: 88, column: 9)
!775 = !DILocation(line: 88, column: 12, scope: !774)
!776 = !DILocation(line: 88, column: 9, scope: !742)
!777 = !DILocation(line: 89, column: 14, scope: !778)
!778 = distinct !DILexicalBlock(scope: !774, file: !3, line: 88, column: 21)
!779 = !DILocation(line: 89, column: 12, scope: !778)
!780 = !DILocation(line: 90, column: 9, scope: !778)
!781 = !DILocation(line: 90, column: 13, scope: !778)
!782 = !DILocation(line: 90, column: 17, scope: !778)
!783 = !DILocation(line: 91, column: 9, scope: !778)
!784 = !DILocation(line: 91, column: 13, scope: !778)
!785 = !DILocation(line: 91, column: 17, scope: !778)
!786 = !DILocation(line: 92, column: 16, scope: !778)
!787 = !DILocation(line: 92, column: 20, scope: !778)
!788 = !DILocation(line: 92, column: 9, scope: !778)
!789 = !DILocation(line: 93, column: 24, scope: !778)
!790 = !DILocation(line: 93, column: 47, scope: !778)
!791 = !DILocation(line: 93, column: 39, scope: !778)
!792 = !DILocation(line: 93, column: 54, scope: !778)
!793 = !DILocation(line: 93, column: 9, scope: !778)
!794 = !DILocation(line: 94, column: 5, scope: !778)
!795 = !DILocation(line: 96, column: 9, scope: !796)
!796 = distinct !DILexicalBlock(scope: !742, file: !3, line: 96, column: 9)
!797 = !DILocation(line: 96, column: 19, scope: !796)
!798 = !DILocation(line: 96, column: 23, scope: !796)
!799 = !DILocation(line: 96, column: 17, scope: !796)
!800 = !DILocation(line: 96, column: 9, scope: !742)
!801 = !DILocation(line: 96, column: 38, scope: !796)
!802 = !DILocation(line: 96, column: 28, scope: !796)
!803 = !DILocation(line: 96, column: 32, scope: !796)
!804 = !DILocation(line: 96, column: 36, scope: !796)
!805 = !DILocation(line: 100, column: 13, scope: !742)
!806 = !DILocation(line: 100, column: 17, scope: !742)
!807 = !DILocation(line: 100, column: 21, scope: !742)
!808 = !DILocation(line: 100, column: 38, scope: !742)
!809 = !DILocation(line: 100, column: 43, scope: !742)
!810 = !DILocation(line: 100, column: 10, scope: !742)
!811 = !DILocation(line: 101, column: 9, scope: !812)
!812 = distinct !DILexicalBlock(scope: !742, file: !3, line: 101, column: 9)
!813 = !DILocation(line: 101, column: 13, scope: !812)
!814 = !DILocation(line: 101, column: 21, scope: !812)
!815 = !DILocation(line: 101, column: 27, scope: !812)
!816 = !DILocation(line: 101, column: 35, scope: !812)
!817 = !DILocation(line: 101, column: 32, scope: !812)
!818 = !DILocation(line: 101, column: 9, scope: !742)
!819 = !DILocation(line: 102, column: 13, scope: !820)
!820 = distinct !DILexicalBlock(scope: !821, file: !3, line: 102, column: 13)
!821 = distinct !DILexicalBlock(scope: !812, file: !3, line: 101, column: 40)
!822 = !DILocation(line: 102, column: 23, scope: !820)
!823 = !DILocation(line: 102, column: 27, scope: !820)
!824 = !DILocation(line: 102, column: 35, scope: !820)
!825 = !DILocation(line: 102, column: 41, scope: !820)
!826 = !DILocation(line: 102, column: 21, scope: !820)
!827 = !DILocation(line: 102, column: 13, scope: !821)
!828 = !DILocation(line: 103, column: 41, scope: !820)
!829 = !DILocation(line: 103, column: 13, scope: !820)
!830 = !DILocation(line: 103, column: 17, scope: !820)
!831 = !DILocation(line: 103, column: 25, scope: !820)
!832 = !DILocation(line: 103, column: 31, scope: !820)
!833 = !DILocation(line: 103, column: 39, scope: !820)
!834 = !DILocation(line: 104, column: 9, scope: !821)
!835 = !DILocation(line: 107, column: 33, scope: !742)
!836 = !DILocation(line: 107, column: 5, scope: !742)
!837 = !DILocation(line: 107, column: 9, scope: !742)
!838 = !DILocation(line: 107, column: 17, scope: !742)
!839 = !DILocation(line: 107, column: 21, scope: !742)
!840 = !DILocation(line: 107, column: 26, scope: !742)
!841 = !DILocation(line: 107, column: 31, scope: !742)
!842 = !DILocation(line: 108, column: 36, scope: !742)
!843 = !DILocation(line: 108, column: 5, scope: !742)
!844 = !DILocation(line: 108, column: 9, scope: !742)
!845 = !DILocation(line: 108, column: 17, scope: !742)
!846 = !DILocation(line: 108, column: 21, scope: !742)
!847 = !DILocation(line: 108, column: 26, scope: !742)
!848 = !DILocation(line: 108, column: 34, scope: !742)
!849 = !DILocation(line: 110, column: 5, scope: !742)
!850 = !DILocation(line: 110, column: 9, scope: !742)
!851 = !DILocation(line: 110, column: 12, scope: !742)
!852 = !DILocation(line: 111, column: 9, scope: !853)
!853 = distinct !DILexicalBlock(scope: !742, file: !3, line: 111, column: 9)
!854 = !DILocation(line: 111, column: 13, scope: !853)
!855 = !DILocation(line: 111, column: 17, scope: !853)
!856 = !DILocation(line: 111, column: 9, scope: !742)
!857 = !DILocation(line: 111, column: 36, scope: !853)
!858 = !DILocation(line: 111, column: 40, scope: !853)
!859 = !DILocation(line: 111, column: 44, scope: !853)
!860 = !DILocation(line: 112, column: 1, scope: !742)
!861 = distinct !DISubprogram(name: "latencyResetEvent", scope: !3, file: !3, line: 119, type: !862, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !710)
!862 = !DISubroutineType(types: !863)
!863 = !{!81, !238}
!864 = !DILocalVariable(name: "event_to_reset", arg: 1, scope: !861, file: !3, line: 119, type: !238)
!865 = !DILocation(line: 119, column: 29, scope: !861)
!866 = !DILocalVariable(name: "di", scope: !861, file: !3, line: 120, type: !867)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !265, line: 103, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !265, line: 96, size: 384, elements: !870)
!870 = !{!871, !872, !873, !874, !875, !876, !877}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !869, file: !265, line: 97, baseType: !263, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !869, file: !265, line: 98, baseType: !65, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !869, file: !265, line: 99, baseType: !81, size: 32, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !869, file: !265, line: 99, baseType: !81, size: 32, offset: 160)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !869, file: !265, line: 100, baseType: !302, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !869, file: !265, line: 100, baseType: !302, size: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !869, file: !265, line: 102, baseType: !68, size: 64, offset: 320)
!878 = !DILocation(line: 120, column: 19, scope: !861)
!879 = !DILocalVariable(name: "de", scope: !861, file: !3, line: 121, type: !302)
!880 = !DILocation(line: 121, column: 16, scope: !861)
!881 = !DILocalVariable(name: "resets", scope: !861, file: !3, line: 122, type: !81)
!882 = !DILocation(line: 122, column: 9, scope: !861)
!883 = !DILocation(line: 124, column: 37, scope: !861)
!884 = !DILocation(line: 124, column: 10, scope: !861)
!885 = !DILocation(line: 124, column: 8, scope: !861)
!886 = !DILocation(line: 125, column: 5, scope: !861)
!887 = !DILocation(line: 125, column: 26, scope: !861)
!888 = !DILocation(line: 125, column: 17, scope: !861)
!889 = !DILocation(line: 125, column: 15, scope: !861)
!890 = !DILocation(line: 125, column: 31, scope: !861)
!891 = !DILocalVariable(name: "event", scope: !892, file: !3, line: 126, type: !238)
!892 = distinct !DILexicalBlock(scope: !861, file: !3, line: 125, column: 40)
!893 = !DILocation(line: 126, column: 15, scope: !892)
!894 = !DILocation(line: 126, column: 23, scope: !892)
!895 = !DILocation(line: 128, column: 13, scope: !896)
!896 = distinct !DILexicalBlock(scope: !892, file: !3, line: 128, column: 13)
!897 = !DILocation(line: 128, column: 28, scope: !896)
!898 = !DILocation(line: 128, column: 36, scope: !896)
!899 = !DILocation(line: 128, column: 50, scope: !896)
!900 = !DILocation(line: 128, column: 56, scope: !896)
!901 = !DILocation(line: 128, column: 39, scope: !896)
!902 = !DILocation(line: 128, column: 72, scope: !896)
!903 = !DILocation(line: 128, column: 13, scope: !892)
!904 = !DILocation(line: 129, column: 31, scope: !905)
!905 = distinct !DILexicalBlock(scope: !896, file: !3, line: 128, column: 78)
!906 = !DILocation(line: 129, column: 47, scope: !905)
!907 = !DILocation(line: 129, column: 13, scope: !905)
!908 = !DILocation(line: 130, column: 19, scope: !905)
!909 = !DILocation(line: 131, column: 9, scope: !905)
!910 = distinct !{!910, !886, !911, !912}
!911 = !DILocation(line: 132, column: 5, scope: !861)
!912 = !{!"llvm.loop.mustprogress"}
!913 = !DILocation(line: 133, column: 25, scope: !861)
!914 = !DILocation(line: 133, column: 5, scope: !861)
!915 = !DILocation(line: 134, column: 12, scope: !861)
!916 = !DILocation(line: 134, column: 5, scope: !861)
!917 = distinct !DISubprogram(name: "analyzeLatencyForEvent", scope: !3, file: !3, line: 144, type: !918, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !710)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !238, !920}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latencyStats", file: !752, line: 54, size: 256, elements: !922)
!922 = !{!923, !924, !925, !926, !927, !928, !929}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "all_time_high", scope: !921, file: !752, line: 55, baseType: !403, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !921, file: !752, line: 56, baseType: !403, size: 32, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !921, file: !752, line: 57, baseType: !403, size: 32, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !921, file: !752, line: 58, baseType: !403, size: 32, offset: 96)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "mad", scope: !921, file: !752, line: 59, baseType: !403, size: 32, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "samples", scope: !921, file: !752, line: 60, baseType: !403, size: 32, offset: 160)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !921, file: !752, line: 61, baseType: !416, size: 64, offset: 192)
!930 = !DILocalVariable(name: "event", arg: 1, scope: !917, file: !3, line: 144, type: !238)
!931 = !DILocation(line: 144, column: 35, scope: !917)
!932 = !DILocalVariable(name: "ls", arg: 2, scope: !917, file: !3, line: 144, type: !920)
!933 = !DILocation(line: 144, column: 63, scope: !917)
!934 = !DILocalVariable(name: "ts", scope: !917, file: !3, line: 145, type: !750)
!935 = !DILocation(line: 145, column: 31, scope: !917)
!936 = !DILocation(line: 145, column: 58, scope: !917)
!937 = !DILocation(line: 145, column: 73, scope: !917)
!938 = !DILocation(line: 145, column: 36, scope: !917)
!939 = !DILocalVariable(name: "j", scope: !917, file: !3, line: 146, type: !81)
!940 = !DILocation(line: 146, column: 9, scope: !917)
!941 = !DILocalVariable(name: "sum", scope: !917, file: !3, line: 147, type: !105)
!942 = !DILocation(line: 147, column: 14, scope: !917)
!943 = !DILocation(line: 149, column: 25, scope: !917)
!944 = !DILocation(line: 149, column: 30, scope: !917)
!945 = !DILocation(line: 149, column: 34, scope: !917)
!946 = !DILocation(line: 149, column: 5, scope: !917)
!947 = !DILocation(line: 149, column: 9, scope: !917)
!948 = !DILocation(line: 149, column: 23, scope: !917)
!949 = !DILocation(line: 150, column: 5, scope: !917)
!950 = !DILocation(line: 150, column: 9, scope: !917)
!951 = !DILocation(line: 150, column: 13, scope: !917)
!952 = !DILocation(line: 151, column: 5, scope: !917)
!953 = !DILocation(line: 151, column: 9, scope: !917)
!954 = !DILocation(line: 151, column: 13, scope: !917)
!955 = !DILocation(line: 152, column: 5, scope: !917)
!956 = !DILocation(line: 152, column: 9, scope: !917)
!957 = !DILocation(line: 152, column: 13, scope: !917)
!958 = !DILocation(line: 153, column: 5, scope: !917)
!959 = !DILocation(line: 153, column: 9, scope: !917)
!960 = !DILocation(line: 153, column: 13, scope: !917)
!961 = !DILocation(line: 154, column: 5, scope: !917)
!962 = !DILocation(line: 154, column: 9, scope: !917)
!963 = !DILocation(line: 154, column: 17, scope: !917)
!964 = !DILocation(line: 155, column: 5, scope: !917)
!965 = !DILocation(line: 155, column: 9, scope: !917)
!966 = !DILocation(line: 155, column: 16, scope: !917)
!967 = !DILocation(line: 156, column: 10, scope: !968)
!968 = distinct !DILexicalBlock(scope: !917, file: !3, line: 156, column: 9)
!969 = !DILocation(line: 156, column: 9, scope: !917)
!970 = !DILocation(line: 156, column: 14, scope: !968)
!971 = !DILocation(line: 159, column: 9, scope: !917)
!972 = !DILocation(line: 160, column: 12, scope: !973)
!973 = distinct !DILexicalBlock(scope: !917, file: !3, line: 160, column: 5)
!974 = !DILocation(line: 160, column: 10, scope: !973)
!975 = !DILocation(line: 160, column: 17, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !3, line: 160, column: 5)
!977 = !DILocation(line: 160, column: 19, scope: !976)
!978 = !DILocation(line: 160, column: 5, scope: !973)
!979 = !DILocation(line: 161, column: 13, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !3, line: 161, column: 13)
!981 = distinct !DILexicalBlock(scope: !976, file: !3, line: 160, column: 42)
!982 = !DILocation(line: 161, column: 17, scope: !980)
!983 = !DILocation(line: 161, column: 25, scope: !980)
!984 = !DILocation(line: 161, column: 28, scope: !980)
!985 = !DILocation(line: 161, column: 33, scope: !980)
!986 = !DILocation(line: 161, column: 13, scope: !981)
!987 = !DILocation(line: 161, column: 39, scope: !980)
!988 = !DILocation(line: 162, column: 9, scope: !981)
!989 = !DILocation(line: 162, column: 13, scope: !981)
!990 = !DILocation(line: 162, column: 20, scope: !981)
!991 = !DILocation(line: 163, column: 13, scope: !992)
!992 = distinct !DILexicalBlock(scope: !981, file: !3, line: 163, column: 13)
!993 = !DILocation(line: 163, column: 17, scope: !992)
!994 = !DILocation(line: 163, column: 25, scope: !992)
!995 = !DILocation(line: 163, column: 13, scope: !981)
!996 = !DILocation(line: 164, column: 33, scope: !997)
!997 = distinct !DILexicalBlock(scope: !992, file: !3, line: 163, column: 31)
!998 = !DILocation(line: 164, column: 37, scope: !997)
!999 = !DILocation(line: 164, column: 45, scope: !997)
!1000 = !DILocation(line: 164, column: 48, scope: !997)
!1001 = !DILocation(line: 164, column: 23, scope: !997)
!1002 = !DILocation(line: 164, column: 27, scope: !997)
!1003 = !DILocation(line: 164, column: 31, scope: !997)
!1004 = !DILocation(line: 164, column: 13, scope: !997)
!1005 = !DILocation(line: 164, column: 17, scope: !997)
!1006 = !DILocation(line: 164, column: 21, scope: !997)
!1007 = !DILocation(line: 165, column: 9, scope: !997)
!1008 = !DILocation(line: 166, column: 17, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 166, column: 17)
!1010 = distinct !DILexicalBlock(scope: !992, file: !3, line: 165, column: 16)
!1011 = !DILocation(line: 166, column: 21, scope: !1009)
!1012 = !DILocation(line: 166, column: 27, scope: !1009)
!1013 = !DILocation(line: 166, column: 31, scope: !1009)
!1014 = !DILocation(line: 166, column: 39, scope: !1009)
!1015 = !DILocation(line: 166, column: 42, scope: !1009)
!1016 = !DILocation(line: 166, column: 25, scope: !1009)
!1017 = !DILocation(line: 166, column: 17, scope: !1010)
!1018 = !DILocation(line: 167, column: 27, scope: !1009)
!1019 = !DILocation(line: 167, column: 31, scope: !1009)
!1020 = !DILocation(line: 167, column: 39, scope: !1009)
!1021 = !DILocation(line: 167, column: 42, scope: !1009)
!1022 = !DILocation(line: 167, column: 17, scope: !1009)
!1023 = !DILocation(line: 167, column: 21, scope: !1009)
!1024 = !DILocation(line: 167, column: 25, scope: !1009)
!1025 = !DILocation(line: 168, column: 17, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 168, column: 17)
!1027 = !DILocation(line: 168, column: 21, scope: !1026)
!1028 = !DILocation(line: 168, column: 27, scope: !1026)
!1029 = !DILocation(line: 168, column: 31, scope: !1026)
!1030 = !DILocation(line: 168, column: 39, scope: !1026)
!1031 = !DILocation(line: 168, column: 42, scope: !1026)
!1032 = !DILocation(line: 168, column: 25, scope: !1026)
!1033 = !DILocation(line: 168, column: 17, scope: !1010)
!1034 = !DILocation(line: 169, column: 27, scope: !1026)
!1035 = !DILocation(line: 169, column: 31, scope: !1026)
!1036 = !DILocation(line: 169, column: 39, scope: !1026)
!1037 = !DILocation(line: 169, column: 42, scope: !1026)
!1038 = !DILocation(line: 169, column: 17, scope: !1026)
!1039 = !DILocation(line: 169, column: 21, scope: !1026)
!1040 = !DILocation(line: 169, column: 25, scope: !1026)
!1041 = !DILocation(line: 171, column: 16, scope: !981)
!1042 = !DILocation(line: 171, column: 20, scope: !981)
!1043 = !DILocation(line: 171, column: 28, scope: !981)
!1044 = !DILocation(line: 171, column: 31, scope: !981)
!1045 = !DILocation(line: 171, column: 13, scope: !981)
!1046 = !DILocation(line: 174, column: 13, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !981, file: !3, line: 174, column: 13)
!1048 = !DILocation(line: 174, column: 17, scope: !1047)
!1049 = !DILocation(line: 174, column: 24, scope: !1047)
!1050 = !DILocation(line: 174, column: 29, scope: !1047)
!1051 = !DILocation(line: 174, column: 32, scope: !1047)
!1052 = !DILocation(line: 174, column: 36, scope: !1047)
!1053 = !DILocation(line: 174, column: 44, scope: !1047)
!1054 = !DILocation(line: 174, column: 47, scope: !1047)
!1055 = !DILocation(line: 174, column: 54, scope: !1047)
!1056 = !DILocation(line: 174, column: 58, scope: !1047)
!1057 = !DILocation(line: 174, column: 52, scope: !1047)
!1058 = !DILocation(line: 174, column: 13, scope: !981)
!1059 = !DILocation(line: 175, column: 26, scope: !1047)
!1060 = !DILocation(line: 175, column: 30, scope: !1047)
!1061 = !DILocation(line: 175, column: 38, scope: !1047)
!1062 = !DILocation(line: 175, column: 41, scope: !1047)
!1063 = !DILocation(line: 175, column: 13, scope: !1047)
!1064 = !DILocation(line: 175, column: 17, scope: !1047)
!1065 = !DILocation(line: 175, column: 24, scope: !1047)
!1066 = !DILocation(line: 176, column: 5, scope: !981)
!1067 = !DILocation(line: 160, column: 38, scope: !976)
!1068 = !DILocation(line: 160, column: 5, scope: !976)
!1069 = distinct !{!1069, !978, !1070, !912}
!1070 = !DILocation(line: 176, column: 5, scope: !973)
!1071 = !DILocation(line: 181, column: 9, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !917, file: !3, line: 181, column: 9)
!1073 = !DILocation(line: 181, column: 13, scope: !1072)
!1074 = !DILocation(line: 181, column: 9, scope: !917)
!1075 = !DILocation(line: 182, column: 19, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 181, column: 22)
!1077 = !DILocation(line: 182, column: 25, scope: !1076)
!1078 = !DILocation(line: 182, column: 29, scope: !1076)
!1079 = !DILocation(line: 182, column: 23, scope: !1076)
!1080 = !DILocation(line: 182, column: 9, scope: !1076)
!1081 = !DILocation(line: 182, column: 13, scope: !1076)
!1082 = !DILocation(line: 182, column: 17, scope: !1076)
!1083 = !DILocation(line: 183, column: 22, scope: !1076)
!1084 = !DILocation(line: 183, column: 35, scope: !1076)
!1085 = !DILocation(line: 183, column: 39, scope: !1076)
!1086 = !DILocation(line: 183, column: 33, scope: !1076)
!1087 = !DILocation(line: 183, column: 9, scope: !1076)
!1088 = !DILocation(line: 183, column: 13, scope: !1076)
!1089 = !DILocation(line: 183, column: 20, scope: !1076)
!1090 = !DILocation(line: 184, column: 13, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 184, column: 13)
!1092 = !DILocation(line: 184, column: 17, scope: !1091)
!1093 = !DILocation(line: 184, column: 24, scope: !1091)
!1094 = !DILocation(line: 184, column: 13, scope: !1076)
!1095 = !DILocation(line: 184, column: 30, scope: !1091)
!1096 = !DILocation(line: 184, column: 34, scope: !1091)
!1097 = !DILocation(line: 184, column: 41, scope: !1091)
!1098 = !DILocation(line: 185, column: 5, scope: !1076)
!1099 = !DILocation(line: 188, column: 9, scope: !917)
!1100 = !DILocation(line: 189, column: 12, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !917, file: !3, line: 189, column: 5)
!1102 = !DILocation(line: 189, column: 10, scope: !1101)
!1103 = !DILocation(line: 189, column: 17, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 189, column: 5)
!1105 = !DILocation(line: 189, column: 19, scope: !1104)
!1106 = !DILocation(line: 189, column: 5, scope: !1101)
!1107 = !DILocalVariable(name: "delta", scope: !1108, file: !3, line: 190, type: !61)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 189, column: 42)
!1109 = !DILocation(line: 190, column: 17, scope: !1108)
!1110 = !DILocation(line: 192, column: 13, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 192, column: 13)
!1112 = !DILocation(line: 192, column: 17, scope: !1111)
!1113 = !DILocation(line: 192, column: 25, scope: !1111)
!1114 = !DILocation(line: 192, column: 28, scope: !1111)
!1115 = !DILocation(line: 192, column: 33, scope: !1111)
!1116 = !DILocation(line: 192, column: 13, scope: !1108)
!1117 = !DILocation(line: 192, column: 39, scope: !1111)
!1118 = !DILocation(line: 193, column: 26, scope: !1108)
!1119 = !DILocation(line: 193, column: 30, scope: !1108)
!1120 = !DILocation(line: 193, column: 17, scope: !1108)
!1121 = !DILocation(line: 193, column: 36, scope: !1108)
!1122 = !DILocation(line: 193, column: 40, scope: !1108)
!1123 = !DILocation(line: 193, column: 48, scope: !1108)
!1124 = !DILocation(line: 193, column: 51, scope: !1108)
!1125 = !DILocation(line: 193, column: 34, scope: !1108)
!1126 = !DILocation(line: 193, column: 15, scope: !1108)
!1127 = !DILocation(line: 194, column: 13, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 194, column: 13)
!1129 = !DILocation(line: 194, column: 19, scope: !1128)
!1130 = !DILocation(line: 194, column: 13, scope: !1108)
!1131 = !DILocation(line: 194, column: 33, scope: !1128)
!1132 = !DILocation(line: 194, column: 32, scope: !1128)
!1133 = !DILocation(line: 194, column: 30, scope: !1128)
!1134 = !DILocation(line: 194, column: 24, scope: !1128)
!1135 = !DILocation(line: 195, column: 16, scope: !1108)
!1136 = !DILocation(line: 195, column: 13, scope: !1108)
!1137 = !DILocation(line: 196, column: 5, scope: !1108)
!1138 = !DILocation(line: 189, column: 38, scope: !1104)
!1139 = !DILocation(line: 189, column: 5, scope: !1104)
!1140 = distinct !{!1140, !1106, !1141, !912}
!1141 = !DILocation(line: 196, column: 5, scope: !1101)
!1142 = !DILocation(line: 197, column: 9, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !917, file: !3, line: 197, column: 9)
!1144 = !DILocation(line: 197, column: 13, scope: !1143)
!1145 = !DILocation(line: 197, column: 9, scope: !917)
!1146 = !DILocation(line: 197, column: 32, scope: !1143)
!1147 = !DILocation(line: 197, column: 38, scope: !1143)
!1148 = !DILocation(line: 197, column: 42, scope: !1143)
!1149 = !DILocation(line: 197, column: 36, scope: !1143)
!1150 = !DILocation(line: 197, column: 22, scope: !1143)
!1151 = !DILocation(line: 197, column: 26, scope: !1143)
!1152 = !DILocation(line: 197, column: 30, scope: !1143)
!1153 = !DILocation(line: 198, column: 1, scope: !917)
!1154 = distinct !DISubprogram(name: "createLatencyReport", scope: !3, file: !3, line: 201, type: !1155, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !710)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!382}
!1157 = !DILocalVariable(name: "report", scope: !1154, file: !3, line: 202, type: !382)
!1158 = !DILocation(line: 202, column: 9, scope: !1154)
!1159 = !DILocation(line: 202, column: 18, scope: !1154)
!1160 = !DILocalVariable(name: "advise_better_vm", scope: !1154, file: !3, line: 203, type: !81)
!1161 = !DILocation(line: 203, column: 9, scope: !1154)
!1162 = !DILocalVariable(name: "advise_slowlog_enabled", scope: !1154, file: !3, line: 204, type: !81)
!1163 = !DILocation(line: 204, column: 9, scope: !1154)
!1164 = !DILocalVariable(name: "advise_slowlog_tuning", scope: !1154, file: !3, line: 205, type: !81)
!1165 = !DILocation(line: 205, column: 9, scope: !1154)
!1166 = !DILocalVariable(name: "advise_slowlog_inspect", scope: !1154, file: !3, line: 206, type: !81)
!1167 = !DILocation(line: 206, column: 9, scope: !1154)
!1168 = !DILocalVariable(name: "advise_disk_contention", scope: !1154, file: !3, line: 207, type: !81)
!1169 = !DILocation(line: 207, column: 9, scope: !1154)
!1170 = !DILocalVariable(name: "advise_scheduler", scope: !1154, file: !3, line: 208, type: !81)
!1171 = !DILocation(line: 208, column: 9, scope: !1154)
!1172 = !DILocalVariable(name: "advise_data_writeback", scope: !1154, file: !3, line: 209, type: !81)
!1173 = !DILocation(line: 209, column: 9, scope: !1154)
!1174 = !DILocalVariable(name: "advise_no_appendfsync", scope: !1154, file: !3, line: 210, type: !81)
!1175 = !DILocation(line: 210, column: 9, scope: !1154)
!1176 = !DILocalVariable(name: "advise_local_disk", scope: !1154, file: !3, line: 211, type: !81)
!1177 = !DILocation(line: 211, column: 9, scope: !1154)
!1178 = !DILocalVariable(name: "advise_ssd", scope: !1154, file: !3, line: 212, type: !81)
!1179 = !DILocation(line: 212, column: 9, scope: !1154)
!1180 = !DILocalVariable(name: "advise_write_load_info", scope: !1154, file: !3, line: 213, type: !81)
!1181 = !DILocation(line: 213, column: 9, scope: !1154)
!1182 = !DILocalVariable(name: "advise_hz", scope: !1154, file: !3, line: 214, type: !81)
!1183 = !DILocation(line: 214, column: 9, scope: !1154)
!1184 = !DILocalVariable(name: "advise_large_objects", scope: !1154, file: !3, line: 215, type: !81)
!1185 = !DILocation(line: 215, column: 9, scope: !1154)
!1186 = !DILocalVariable(name: "advise_mass_eviction", scope: !1154, file: !3, line: 216, type: !81)
!1187 = !DILocation(line: 216, column: 9, scope: !1154)
!1188 = !DILocalVariable(name: "advise_relax_fsync_policy", scope: !1154, file: !3, line: 217, type: !81)
!1189 = !DILocation(line: 217, column: 9, scope: !1154)
!1190 = !DILocalVariable(name: "advise_disable_thp", scope: !1154, file: !3, line: 218, type: !81)
!1191 = !DILocation(line: 218, column: 9, scope: !1154)
!1192 = !DILocalVariable(name: "advices", scope: !1154, file: !3, line: 219, type: !81)
!1193 = !DILocation(line: 219, column: 9, scope: !1154)
!1194 = !DILocation(line: 223, column: 9, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 223, column: 9)
!1196 = !DILocation(line: 223, column: 41, scope: !1195)
!1197 = !DILocation(line: 223, column: 46, scope: !1195)
!1198 = !DILocation(line: 224, column: 16, scope: !1195)
!1199 = !DILocation(line: 224, column: 42, scope: !1195)
!1200 = !DILocation(line: 223, column: 9, scope: !1154)
!1201 = !DILocation(line: 226, column: 25, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 225, column: 5)
!1203 = !DILocation(line: 226, column: 18, scope: !1202)
!1204 = !DILocation(line: 226, column: 16, scope: !1202)
!1205 = !DILocation(line: 227, column: 16, scope: !1202)
!1206 = !DILocation(line: 227, column: 9, scope: !1202)
!1207 = !DILocalVariable(name: "di", scope: !1154, file: !3, line: 232, type: !867)
!1208 = !DILocation(line: 232, column: 19, scope: !1154)
!1209 = !DILocalVariable(name: "de", scope: !1154, file: !3, line: 233, type: !302)
!1210 = !DILocation(line: 233, column: 16, scope: !1154)
!1211 = !DILocalVariable(name: "eventnum", scope: !1154, file: !3, line: 234, type: !81)
!1212 = !DILocation(line: 234, column: 9, scope: !1154)
!1213 = !DILocation(line: 236, column: 37, scope: !1154)
!1214 = !DILocation(line: 236, column: 10, scope: !1154)
!1215 = !DILocation(line: 236, column: 8, scope: !1154)
!1216 = !DILocation(line: 237, column: 5, scope: !1154)
!1217 = !DILocation(line: 237, column: 26, scope: !1154)
!1218 = !DILocation(line: 237, column: 17, scope: !1154)
!1219 = !DILocation(line: 237, column: 15, scope: !1154)
!1220 = !DILocation(line: 237, column: 31, scope: !1154)
!1221 = !DILocalVariable(name: "event", scope: !1222, file: !3, line: 238, type: !238)
!1222 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 237, column: 40)
!1223 = !DILocation(line: 238, column: 15, scope: !1222)
!1224 = !DILocation(line: 238, column: 23, scope: !1222)
!1225 = !DILocalVariable(name: "ts", scope: !1222, file: !3, line: 239, type: !750)
!1226 = !DILocation(line: 239, column: 35, scope: !1222)
!1227 = !DILocation(line: 239, column: 40, scope: !1222)
!1228 = !DILocalVariable(name: "ls", scope: !1222, file: !3, line: 240, type: !921)
!1229 = !DILocation(line: 240, column: 29, scope: !1222)
!1230 = !DILocation(line: 242, column: 13, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 242, column: 13)
!1232 = !DILocation(line: 242, column: 16, scope: !1231)
!1233 = !DILocation(line: 242, column: 13, scope: !1222)
!1234 = !DILocation(line: 242, column: 25, scope: !1231)
!1235 = distinct !{!1235, !1216, !1236, !912}
!1236 = !DILocation(line: 364, column: 5, scope: !1154)
!1237 = !DILocation(line: 243, column: 17, scope: !1222)
!1238 = !DILocation(line: 244, column: 13, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 244, column: 13)
!1240 = !DILocation(line: 244, column: 22, scope: !1239)
!1241 = !DILocation(line: 244, column: 13, scope: !1222)
!1242 = !DILocation(line: 245, column: 29, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 244, column: 28)
!1244 = !DILocation(line: 245, column: 22, scope: !1243)
!1245 = !DILocation(line: 245, column: 20, scope: !1243)
!1246 = !DILocation(line: 246, column: 9, scope: !1243)
!1247 = !DILocation(line: 247, column: 32, scope: !1222)
!1248 = !DILocation(line: 247, column: 9, scope: !1222)
!1249 = !DILocation(line: 249, column: 31, scope: !1222)
!1250 = !DILocation(line: 251, column: 13, scope: !1222)
!1251 = !DILocation(line: 251, column: 23, scope: !1222)
!1252 = !DILocation(line: 252, column: 16, scope: !1222)
!1253 = !DILocation(line: 253, column: 32, scope: !1222)
!1254 = !DILocation(line: 253, column: 13, scope: !1222)
!1255 = !DILocation(line: 254, column: 32, scope: !1222)
!1256 = !DILocation(line: 254, column: 13, scope: !1222)
!1257 = !DILocation(line: 255, column: 25, scope: !1222)
!1258 = !DILocation(line: 255, column: 13, scope: !1222)
!1259 = !DILocation(line: 255, column: 35, scope: !1222)
!1260 = !DILocation(line: 255, column: 32, scope: !1222)
!1261 = !DILocation(line: 255, column: 31, scope: !1222)
!1262 = !DILocation(line: 256, column: 29, scope: !1222)
!1263 = !DILocation(line: 256, column: 33, scope: !1222)
!1264 = !DILocation(line: 256, column: 13, scope: !1222)
!1265 = !DILocation(line: 249, column: 18, scope: !1222)
!1266 = !DILocation(line: 249, column: 16, scope: !1222)
!1267 = !DILocation(line: 259, column: 25, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 259, column: 13)
!1269 = !DILocation(line: 259, column: 14, scope: !1268)
!1270 = !DILocation(line: 259, column: 13, scope: !1222)
!1271 = !DILocalVariable(name: "fork_quality", scope: !1272, file: !3, line: 260, type: !238)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 259, column: 40)
!1273 = !DILocation(line: 260, column: 19, scope: !1272)
!1274 = !DILocation(line: 261, column: 24, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 261, column: 17)
!1276 = !DILocation(line: 261, column: 39, scope: !1275)
!1277 = !DILocation(line: 261, column: 17, scope: !1272)
!1278 = !DILocation(line: 262, column: 30, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 261, column: 45)
!1280 = !DILocation(line: 263, column: 34, scope: !1279)
!1281 = !DILocation(line: 264, column: 24, scope: !1279)
!1282 = !DILocation(line: 265, column: 13, scope: !1279)
!1283 = !DILocation(line: 265, column: 31, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 265, column: 24)
!1285 = !DILocation(line: 265, column: 46, scope: !1284)
!1286 = !DILocation(line: 265, column: 24, scope: !1275)
!1287 = !DILocation(line: 266, column: 30, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 265, column: 52)
!1289 = !DILocation(line: 267, column: 34, scope: !1288)
!1290 = !DILocation(line: 268, column: 24, scope: !1288)
!1291 = !DILocation(line: 269, column: 13, scope: !1288)
!1292 = !DILocation(line: 269, column: 31, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 269, column: 24)
!1294 = !DILocation(line: 269, column: 46, scope: !1293)
!1295 = !DILocation(line: 269, column: 24, scope: !1284)
!1296 = !DILocation(line: 270, column: 30, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 269, column: 53)
!1298 = !DILocation(line: 271, column: 13, scope: !1297)
!1299 = !DILocation(line: 272, column: 30, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 271, column: 20)
!1301 = !DILocation(line: 274, column: 35, scope: !1272)
!1302 = !DILocation(line: 275, column: 59, scope: !1272)
!1303 = !DILocation(line: 276, column: 17, scope: !1272)
!1304 = !DILocation(line: 274, column: 22, scope: !1272)
!1305 = !DILocation(line: 274, column: 20, scope: !1272)
!1306 = !DILocation(line: 277, column: 9, scope: !1272)
!1307 = !DILocation(line: 280, column: 25, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 280, column: 13)
!1309 = !DILocation(line: 280, column: 14, scope: !1308)
!1310 = !DILocation(line: 280, column: 13, scope: !1222)
!1311 = !DILocation(line: 281, column: 24, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 281, column: 17)
!1313 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 280, column: 43)
!1314 = !DILocation(line: 281, column: 48, scope: !1312)
!1315 = !DILocation(line: 281, column: 17, scope: !1313)
!1316 = !DILocation(line: 282, column: 40, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 281, column: 53)
!1318 = !DILocation(line: 283, column: 24, scope: !1317)
!1319 = !DILocation(line: 284, column: 13, scope: !1317)
!1320 = !DILocation(line: 284, column: 31, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 284, column: 24)
!1322 = !DILocation(line: 284, column: 54, scope: !1321)
!1323 = !DILocation(line: 285, column: 31, scope: !1321)
!1324 = !DILocation(line: 284, column: 60, scope: !1321)
!1325 = !DILocation(line: 284, column: 24, scope: !1312)
!1326 = !DILocation(line: 287, column: 39, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 286, column: 13)
!1328 = !DILocation(line: 288, column: 24, scope: !1327)
!1329 = !DILocation(line: 289, column: 13, scope: !1327)
!1330 = !DILocation(line: 290, column: 36, scope: !1313)
!1331 = !DILocation(line: 291, column: 34, scope: !1313)
!1332 = !DILocation(line: 292, column: 21, scope: !1313)
!1333 = !DILocation(line: 293, column: 9, scope: !1313)
!1334 = !DILocation(line: 296, column: 25, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 296, column: 13)
!1336 = !DILocation(line: 296, column: 14, scope: !1335)
!1337 = !DILocation(line: 296, column: 13, scope: !1222)
!1338 = !DILocation(line: 297, column: 30, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 296, column: 48)
!1340 = !DILocation(line: 298, column: 20, scope: !1339)
!1341 = !DILocation(line: 299, column: 9, scope: !1339)
!1342 = !DILocation(line: 302, column: 25, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 302, column: 13)
!1344 = !DILocation(line: 302, column: 14, scope: !1343)
!1345 = !DILocation(line: 302, column: 13, scope: !1222)
!1346 = !DILocation(line: 303, column: 31, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 302, column: 59)
!1348 = !DILocation(line: 304, column: 36, scope: !1347)
!1349 = !DILocation(line: 305, column: 24, scope: !1347)
!1350 = !DILocation(line: 306, column: 35, scope: !1347)
!1351 = !DILocation(line: 307, column: 21, scope: !1347)
!1352 = !DILocation(line: 308, column: 9, scope: !1347)
!1353 = !DILocation(line: 310, column: 25, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 310, column: 13)
!1355 = !DILocation(line: 310, column: 14, scope: !1354)
!1356 = !DILocation(line: 310, column: 13, scope: !1222)
!1357 = !DILocation(line: 311, column: 35, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 310, column: 58)
!1359 = !DILocation(line: 312, column: 35, scope: !1358)
!1360 = !DILocation(line: 313, column: 24, scope: !1358)
!1361 = !DILocation(line: 314, column: 21, scope: !1358)
!1362 = !DILocation(line: 315, column: 9, scope: !1358)
!1363 = !DILocation(line: 317, column: 25, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 317, column: 13)
!1365 = !DILocation(line: 317, column: 14, scope: !1364)
!1366 = !DILocation(line: 317, column: 13, scope: !1222)
!1367 = !DILocation(line: 318, column: 31, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 317, column: 51)
!1369 = !DILocation(line: 319, column: 35, scope: !1368)
!1370 = !DILocation(line: 320, column: 24, scope: !1368)
!1371 = !DILocation(line: 321, column: 21, scope: !1368)
!1372 = !DILocation(line: 322, column: 9, scope: !1368)
!1373 = !DILocation(line: 324, column: 25, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 324, column: 13)
!1375 = !DILocation(line: 324, column: 14, scope: !1374)
!1376 = !DILocation(line: 324, column: 13, scope: !1222)
!1377 = !DILocation(line: 325, column: 39, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 324, column: 52)
!1379 = !DILocation(line: 326, column: 20, scope: !1378)
!1380 = !DILocation(line: 327, column: 9, scope: !1378)
!1381 = !DILocation(line: 329, column: 25, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 329, column: 13)
!1383 = !DILocation(line: 329, column: 14, scope: !1382)
!1384 = !DILocation(line: 329, column: 44, scope: !1382)
!1385 = !DILocation(line: 330, column: 25, scope: !1382)
!1386 = !DILocation(line: 330, column: 14, scope: !1382)
!1387 = !DILocation(line: 329, column: 13, scope: !1222)
!1388 = !DILocation(line: 331, column: 36, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 330, column: 56)
!1390 = !DILocation(line: 332, column: 31, scope: !1389)
!1391 = !DILocation(line: 333, column: 21, scope: !1389)
!1392 = !DILocation(line: 334, column: 9, scope: !1389)
!1393 = !DILocation(line: 336, column: 25, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 336, column: 13)
!1395 = !DILocation(line: 336, column: 14, scope: !1394)
!1396 = !DILocation(line: 336, column: 57, scope: !1394)
!1397 = !DILocation(line: 337, column: 25, scope: !1394)
!1398 = !DILocation(line: 337, column: 14, scope: !1394)
!1399 = !DILocation(line: 336, column: 13, scope: !1222)
!1400 = !DILocation(line: 338, column: 36, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 337, column: 46)
!1402 = !DILocation(line: 339, column: 35, scope: !1401)
!1403 = !DILocation(line: 340, column: 24, scope: !1401)
!1404 = !DILocation(line: 341, column: 31, scope: !1401)
!1405 = !DILocation(line: 342, column: 21, scope: !1401)
!1406 = !DILocation(line: 343, column: 9, scope: !1401)
!1407 = !DILocation(line: 346, column: 25, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 346, column: 13)
!1409 = !DILocation(line: 346, column: 14, scope: !1408)
!1410 = !DILocation(line: 346, column: 13, scope: !1222)
!1411 = !DILocation(line: 347, column: 23, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 346, column: 48)
!1413 = !DILocation(line: 348, column: 34, scope: !1412)
!1414 = !DILocation(line: 349, column: 21, scope: !1412)
!1415 = !DILocation(line: 350, column: 9, scope: !1412)
!1416 = !DILocation(line: 353, column: 25, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 353, column: 13)
!1418 = !DILocation(line: 353, column: 14, scope: !1417)
!1419 = !DILocation(line: 353, column: 13, scope: !1222)
!1420 = !DILocation(line: 354, column: 34, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 353, column: 48)
!1422 = !DILocation(line: 355, column: 20, scope: !1421)
!1423 = !DILocation(line: 356, column: 9, scope: !1421)
!1424 = !DILocation(line: 358, column: 25, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 358, column: 13)
!1426 = !DILocation(line: 358, column: 14, scope: !1425)
!1427 = !DILocation(line: 358, column: 13, scope: !1222)
!1428 = !DILocation(line: 359, column: 34, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 358, column: 50)
!1430 = !DILocation(line: 360, column: 20, scope: !1429)
!1431 = !DILocation(line: 361, column: 9, scope: !1429)
!1432 = !DILocation(line: 363, column: 28, scope: !1222)
!1433 = !DILocation(line: 363, column: 18, scope: !1222)
!1434 = !DILocation(line: 363, column: 16, scope: !1222)
!1435 = !DILocation(line: 365, column: 25, scope: !1154)
!1436 = !DILocation(line: 365, column: 5, scope: !1154)
!1437 = !DILocation(line: 368, column: 9, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 368, column: 9)
!1439 = !DILocation(line: 368, column: 35, scope: !1438)
!1440 = !DILocation(line: 368, column: 9, scope: !1154)
!1441 = !DILocation(line: 369, column: 28, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 368, column: 40)
!1443 = !DILocation(line: 370, column: 16, scope: !1442)
!1444 = !DILocation(line: 371, column: 5, scope: !1442)
!1445 = !DILocation(line: 373, column: 9, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 373, column: 9)
!1447 = !DILocation(line: 373, column: 18, scope: !1446)
!1448 = !DILocation(line: 373, column: 23, scope: !1446)
!1449 = !DILocation(line: 373, column: 26, scope: !1446)
!1450 = !DILocation(line: 373, column: 34, scope: !1446)
!1451 = !DILocation(line: 373, column: 9, scope: !1154)
!1452 = !DILocation(line: 374, column: 25, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 373, column: 40)
!1454 = !DILocation(line: 374, column: 18, scope: !1453)
!1455 = !DILocation(line: 374, column: 16, scope: !1453)
!1456 = !DILocation(line: 375, column: 5, scope: !1453)
!1457 = !DILocation(line: 375, column: 16, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 375, column: 16)
!1459 = !DILocation(line: 375, column: 25, scope: !1458)
!1460 = !DILocation(line: 375, column: 29, scope: !1458)
!1461 = !DILocation(line: 375, column: 32, scope: !1458)
!1462 = !DILocation(line: 375, column: 40, scope: !1458)
!1463 = !DILocation(line: 375, column: 16, scope: !1446)
!1464 = !DILocation(line: 376, column: 25, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 375, column: 46)
!1466 = !DILocation(line: 376, column: 18, scope: !1465)
!1467 = !DILocation(line: 376, column: 16, scope: !1465)
!1468 = !DILocation(line: 377, column: 5, scope: !1465)
!1469 = !DILocation(line: 381, column: 25, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 377, column: 12)
!1471 = !DILocation(line: 381, column: 18, scope: !1470)
!1472 = !DILocation(line: 381, column: 16, scope: !1470)
!1473 = !DILocation(line: 382, column: 13, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 382, column: 13)
!1475 = !DILocation(line: 382, column: 13, scope: !1470)
!1476 = !DILocation(line: 383, column: 29, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 382, column: 31)
!1478 = !DILocation(line: 383, column: 22, scope: !1477)
!1479 = !DILocation(line: 383, column: 20, scope: !1477)
!1480 = !DILocation(line: 384, column: 9, scope: !1477)
!1481 = !DILocation(line: 387, column: 13, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 387, column: 13)
!1483 = !DILocation(line: 387, column: 13, scope: !1470)
!1484 = !DILocation(line: 388, column: 35, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 387, column: 37)
!1486 = !DILocation(line: 388, column: 335, scope: !1485)
!1487 = !DILocation(line: 388, column: 360, scope: !1485)
!1488 = !DILocation(line: 388, column: 22, scope: !1485)
!1489 = !DILocation(line: 388, column: 20, scope: !1485)
!1490 = !DILocation(line: 389, column: 9, scope: !1485)
!1491 = !DILocation(line: 391, column: 13, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 391, column: 13)
!1493 = !DILocation(line: 391, column: 13, scope: !1470)
!1494 = !DILocation(line: 392, column: 35, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 391, column: 36)
!1496 = !DILocation(line: 392, column: 247, scope: !1495)
!1497 = !DILocation(line: 392, column: 272, scope: !1495)
!1498 = !DILocation(line: 392, column: 22, scope: !1495)
!1499 = !DILocation(line: 392, column: 20, scope: !1495)
!1500 = !DILocation(line: 393, column: 9, scope: !1495)
!1501 = !DILocation(line: 395, column: 13, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 395, column: 13)
!1503 = !DILocation(line: 395, column: 13, scope: !1470)
!1504 = !DILocation(line: 396, column: 29, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 395, column: 37)
!1506 = !DILocation(line: 396, column: 22, scope: !1505)
!1507 = !DILocation(line: 396, column: 20, scope: !1505)
!1508 = !DILocation(line: 397, column: 9, scope: !1505)
!1509 = !DILocation(line: 400, column: 13, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 400, column: 13)
!1511 = !DILocation(line: 400, column: 13, scope: !1470)
!1512 = !DILocation(line: 401, column: 29, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 400, column: 31)
!1514 = !DILocation(line: 401, column: 22, scope: !1513)
!1515 = !DILocation(line: 401, column: 20, scope: !1513)
!1516 = !DILocation(line: 407, column: 9, scope: !1513)
!1517 = !DILocation(line: 410, column: 13, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 410, column: 13)
!1519 = !DILocation(line: 410, column: 13, scope: !1470)
!1520 = !DILocation(line: 411, column: 29, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 410, column: 32)
!1522 = !DILocation(line: 411, column: 22, scope: !1521)
!1523 = !DILocation(line: 411, column: 20, scope: !1521)
!1524 = !DILocation(line: 412, column: 9, scope: !1521)
!1525 = !DILocation(line: 414, column: 13, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 414, column: 13)
!1527 = !DILocation(line: 414, column: 13, scope: !1470)
!1528 = !DILocation(line: 415, column: 29, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 414, column: 25)
!1530 = !DILocation(line: 415, column: 22, scope: !1529)
!1531 = !DILocation(line: 415, column: 20, scope: !1529)
!1532 = !DILocation(line: 416, column: 9, scope: !1529)
!1533 = !DILocation(line: 418, column: 13, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 418, column: 13)
!1535 = !DILocation(line: 418, column: 13, scope: !1470)
!1536 = !DILocation(line: 419, column: 29, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 418, column: 36)
!1538 = !DILocation(line: 419, column: 22, scope: !1537)
!1539 = !DILocation(line: 419, column: 20, scope: !1537)
!1540 = !DILocation(line: 420, column: 9, scope: !1537)
!1541 = !DILocation(line: 422, column: 13, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 422, column: 13)
!1543 = !DILocation(line: 422, column: 13, scope: !1470)
!1544 = !DILocation(line: 423, column: 29, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 422, column: 37)
!1546 = !DILocation(line: 423, column: 22, scope: !1545)
!1547 = !DILocation(line: 423, column: 20, scope: !1545)
!1548 = !DILocation(line: 424, column: 9, scope: !1545)
!1549 = !DILocation(line: 426, column: 13, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 426, column: 13)
!1551 = !DILocation(line: 426, column: 13, scope: !1470)
!1552 = !DILocation(line: 427, column: 29, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 426, column: 36)
!1554 = !DILocation(line: 427, column: 22, scope: !1553)
!1555 = !DILocation(line: 427, column: 20, scope: !1553)
!1556 = !DILocation(line: 428, column: 9, scope: !1553)
!1557 = !DILocation(line: 430, column: 13, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 430, column: 13)
!1559 = !DILocation(line: 430, column: 39, scope: !1558)
!1560 = !DILocation(line: 430, column: 49, scope: !1558)
!1561 = !DILocation(line: 430, column: 59, scope: !1558)
!1562 = !DILocation(line: 430, column: 13, scope: !1470)
!1563 = !DILocation(line: 431, column: 29, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 430, column: 80)
!1565 = !DILocation(line: 431, column: 22, scope: !1564)
!1566 = !DILocation(line: 431, column: 20, scope: !1564)
!1567 = !DILocation(line: 432, column: 9, scope: !1564)
!1568 = !DILocation(line: 434, column: 13, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 434, column: 13)
!1570 = !DILocation(line: 434, column: 13, scope: !1470)
!1571 = !DILocation(line: 435, column: 29, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 434, column: 37)
!1573 = !DILocation(line: 435, column: 22, scope: !1572)
!1574 = !DILocation(line: 435, column: 20, scope: !1572)
!1575 = !DILocation(line: 436, column: 9, scope: !1572)
!1576 = !DILocation(line: 438, column: 13, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 438, column: 13)
!1578 = !DILocation(line: 438, column: 23, scope: !1577)
!1579 = !DILocation(line: 438, column: 33, scope: !1577)
!1580 = !DILocation(line: 438, column: 36, scope: !1577)
!1581 = !DILocation(line: 438, column: 13, scope: !1470)
!1582 = !DILocation(line: 439, column: 29, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 438, column: 43)
!1584 = !DILocation(line: 439, column: 22, scope: !1583)
!1585 = !DILocation(line: 439, column: 20, scope: !1583)
!1586 = !DILocation(line: 440, column: 9, scope: !1583)
!1587 = !DILocation(line: 442, column: 13, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 442, column: 13)
!1589 = !DILocation(line: 442, column: 13, scope: !1470)
!1590 = !DILocation(line: 443, column: 29, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 442, column: 35)
!1592 = !DILocation(line: 443, column: 22, scope: !1591)
!1593 = !DILocation(line: 443, column: 20, scope: !1591)
!1594 = !DILocation(line: 444, column: 9, scope: !1591)
!1595 = !DILocation(line: 446, column: 13, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 446, column: 13)
!1597 = !DILocation(line: 446, column: 13, scope: !1470)
!1598 = !DILocation(line: 447, column: 29, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 446, column: 35)
!1600 = !DILocation(line: 447, column: 22, scope: !1599)
!1601 = !DILocation(line: 447, column: 20, scope: !1599)
!1602 = !DILocation(line: 448, column: 9, scope: !1599)
!1603 = !DILocation(line: 450, column: 13, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 450, column: 13)
!1605 = !DILocation(line: 450, column: 13, scope: !1470)
!1606 = !DILocation(line: 451, column: 29, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 450, column: 33)
!1608 = !DILocation(line: 451, column: 22, scope: !1607)
!1609 = !DILocation(line: 451, column: 20, scope: !1607)
!1610 = !DILocation(line: 452, column: 9, scope: !1607)
!1611 = !DILocation(line: 455, column: 12, scope: !1154)
!1612 = !DILocation(line: 455, column: 5, scope: !1154)
!1613 = !DILocation(line: 456, column: 1, scope: !1154)
!1614 = distinct !DISubprogram(name: "fillCommandCDF", scope: !3, file: !3, line: 467, type: !1615, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !710)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{null, !100, !632}
!1617 = !DILocalVariable(name: "c", arg: 1, scope: !1614, file: !3, line: 467, type: !100)
!1618 = !DILocation(line: 467, column: 29, scope: !1614)
!1619 = !DILocalVariable(name: "histogram", arg: 2, scope: !1614, file: !3, line: 467, type: !632)
!1620 = !DILocation(line: 467, column: 54, scope: !1614)
!1621 = !DILocation(line: 468, column: 20, scope: !1614)
!1622 = !DILocation(line: 468, column: 5, scope: !1614)
!1623 = !DILocation(line: 469, column: 25, scope: !1614)
!1624 = !DILocation(line: 469, column: 5, scope: !1614)
!1625 = !DILocation(line: 470, column: 22, scope: !1614)
!1626 = !DILocation(line: 470, column: 36, scope: !1614)
!1627 = !DILocation(line: 470, column: 47, scope: !1614)
!1628 = !DILocation(line: 470, column: 5, scope: !1614)
!1629 = !DILocation(line: 471, column: 25, scope: !1614)
!1630 = !DILocation(line: 471, column: 5, scope: !1614)
!1631 = !DILocalVariable(name: "replylen", scope: !1614, file: !3, line: 472, type: !60)
!1632 = !DILocation(line: 472, column: 11, scope: !1614)
!1633 = !DILocation(line: 472, column: 42, scope: !1614)
!1634 = !DILocation(line: 472, column: 22, scope: !1614)
!1635 = !DILocalVariable(name: "samples", scope: !1614, file: !3, line: 473, type: !81)
!1636 = !DILocation(line: 473, column: 9, scope: !1614)
!1637 = !DILocalVariable(name: "iter", scope: !1614, file: !3, line: 474, type: !1638)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_iter", file: !634, line: 378, size: 1024, elements: !1639)
!1639 = !{!1640, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1682}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !1638, file: !634, line: 380, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "counts_index", scope: !1638, file: !634, line: 382, baseType: !639, size: 32, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "total_count", scope: !1638, file: !634, line: 384, baseType: !61, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1638, file: !634, line: 386, baseType: !61, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "cumulative_count", scope: !1638, file: !634, line: 388, baseType: !61, size: 64, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1638, file: !634, line: 390, baseType: !61, size: 64, offset: 320)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "highest_equivalent_value", scope: !1638, file: !634, line: 391, baseType: !61, size: 64, offset: 384)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_equivalent_value", scope: !1638, file: !634, line: 392, baseType: !61, size: 64, offset: 448)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "median_equivalent_value", scope: !1638, file: !634, line: 393, baseType: !61, size: 64, offset: 512)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "value_iterated_from", scope: !1638, file: !634, line: 394, baseType: !61, size: 64, offset: 576)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "value_iterated_to", scope: !1638, file: !634, line: 395, baseType: !61, size: 64, offset: 640)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "specifics", scope: !1638, file: !634, line: 403, baseType: !1654, size: 256, offset: 704)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1638, file: !634, line: 397, size: 256, elements: !1655)
!1655 = !{!1656, !1664, !1668, !1675}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "percentiles", scope: !1654, file: !634, line: 399, baseType: !1657, size: 192)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_iter_percentiles", file: !634, line: 341, size: 192, elements: !1658)
!1658 = !{!1659, !1661, !1662, !1663}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "seen_last_value", scope: !1657, file: !634, line: 343, baseType: !1660, size: 8)
!1660 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_half_distance", scope: !1657, file: !634, line: 344, baseType: !639, size: 32, offset: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "percentile_to_iterate_to", scope: !1657, file: !634, line: 345, baseType: !67, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "percentile", scope: !1657, file: !634, line: 346, baseType: !67, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "recorded", scope: !1654, file: !634, line: 400, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_iter_recorded", file: !634, line: 349, size: 64, elements: !1666)
!1666 = !{!1667}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "count_added_in_this_iteration_step", scope: !1665, file: !634, line: 351, baseType: !61, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "linear", scope: !1654, file: !634, line: 401, baseType: !1669, size: 256)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_iter_linear", file: !634, line: 354, size: 256, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1674}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "value_units_per_bucket", scope: !1669, file: !634, line: 356, baseType: !61, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "count_added_in_this_iteration_step", scope: !1669, file: !634, line: 357, baseType: !61, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "next_value_reporting_level", scope: !1669, file: !634, line: 358, baseType: !61, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "next_value_reporting_level_lowest_equivalent", scope: !1669, file: !634, line: 359, baseType: !61, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1654, file: !634, line: 402, baseType: !1676, size: 256)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_iter_log", file: !634, line: 362, size: 256, elements: !1677)
!1677 = !{!1678, !1679, !1680, !1681}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "log_base", scope: !1676, file: !634, line: 364, baseType: !67, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "count_added_in_this_iteration_step", scope: !1676, file: !634, line: 365, baseType: !61, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "next_value_reporting_level", scope: !1676, file: !634, line: 366, baseType: !61, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "next_value_reporting_level_lowest_equivalent", scope: !1676, file: !634, line: 367, baseType: !61, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_next_fp", scope: !1638, file: !634, line: 405, baseType: !1683, size: 64, offset: 960)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!1660, !1686}
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1687 = !DILocation(line: 474, column: 21, scope: !1614)
!1688 = !DILocation(line: 475, column: 29, scope: !1614)
!1689 = !DILocation(line: 475, column: 5, scope: !1614)
!1690 = !DILocalVariable(name: "previous_count", scope: !1614, file: !3, line: 476, type: !61)
!1691 = !DILocation(line: 476, column: 13, scope: !1614)
!1692 = !DILocation(line: 477, column: 5, scope: !1614)
!1693 = !DILocation(line: 477, column: 12, scope: !1614)
!1694 = !DILocalVariable(name: "micros", scope: !1695, file: !3, line: 478, type: !1696)
!1695 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 477, column: 34)
!1696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!1697 = !DILocation(line: 478, column: 23, scope: !1695)
!1698 = !DILocation(line: 478, column: 37, scope: !1695)
!1699 = !DILocation(line: 478, column: 62, scope: !1695)
!1700 = !DILocalVariable(name: "cumulative_count", scope: !1695, file: !3, line: 479, type: !1696)
!1701 = !DILocation(line: 479, column: 23, scope: !1695)
!1702 = !DILocation(line: 479, column: 47, scope: !1695)
!1703 = !DILocation(line: 480, column: 12, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 480, column: 12)
!1705 = !DILocation(line: 480, column: 31, scope: !1704)
!1706 = !DILocation(line: 480, column: 29, scope: !1704)
!1707 = !DILocation(line: 480, column: 12, scope: !1695)
!1708 = !DILocation(line: 481, column: 30, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 480, column: 46)
!1710 = !DILocation(line: 481, column: 44, scope: !1709)
!1711 = !DILocation(line: 481, column: 13, scope: !1709)
!1712 = !DILocation(line: 482, column: 30, scope: !1709)
!1713 = !DILocation(line: 482, column: 44, scope: !1709)
!1714 = !DILocation(line: 482, column: 13, scope: !1709)
!1715 = !DILocation(line: 483, column: 20, scope: !1709)
!1716 = !DILocation(line: 484, column: 9, scope: !1709)
!1717 = !DILocation(line: 485, column: 26, scope: !1695)
!1718 = !DILocation(line: 485, column: 24, scope: !1695)
!1719 = distinct !{!1719, !1692, !1720, !912}
!1720 = !DILocation(line: 486, column: 5, scope: !1614)
!1721 = !DILocation(line: 487, column: 23, scope: !1614)
!1722 = !DILocation(line: 487, column: 25, scope: !1614)
!1723 = !DILocation(line: 487, column: 34, scope: !1614)
!1724 = !DILocation(line: 487, column: 5, scope: !1614)
!1725 = !DILocation(line: 488, column: 1, scope: !1614)
!1726 = distinct !DISubprogram(name: "latencyAllCommandsFillCDF", scope: !3, file: !3, line: 492, type: !1727, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !710)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{null, !100, !263, !1729}
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!1730 = !DILocalVariable(name: "c", arg: 1, scope: !1726, file: !3, line: 492, type: !100)
!1731 = !DILocation(line: 492, column: 40, scope: !1726)
!1732 = !DILocalVariable(name: "commands", arg: 2, scope: !1726, file: !3, line: 492, type: !263)
!1733 = !DILocation(line: 492, column: 49, scope: !1726)
!1734 = !DILocalVariable(name: "command_with_data", arg: 3, scope: !1726, file: !3, line: 492, type: !1729)
!1735 = !DILocation(line: 492, column: 64, scope: !1726)
!1736 = !DILocalVariable(name: "di", scope: !1726, file: !3, line: 493, type: !867)
!1737 = !DILocation(line: 493, column: 19, scope: !1726)
!1738 = !DILocation(line: 493, column: 44, scope: !1726)
!1739 = !DILocation(line: 493, column: 24, scope: !1726)
!1740 = !DILocalVariable(name: "de", scope: !1726, file: !3, line: 494, type: !302)
!1741 = !DILocation(line: 494, column: 16, scope: !1726)
!1742 = !DILocalVariable(name: "cmd", scope: !1726, file: !3, line: 495, type: !70)
!1743 = !DILocation(line: 495, column: 26, scope: !1726)
!1744 = !DILocation(line: 497, column: 5, scope: !1726)
!1745 = !DILocation(line: 497, column: 26, scope: !1726)
!1746 = !DILocation(line: 497, column: 17, scope: !1726)
!1747 = !DILocation(line: 497, column: 15, scope: !1726)
!1748 = !DILocation(line: 497, column: 31, scope: !1726)
!1749 = !DILocation(line: 498, column: 39, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 497, column: 40)
!1751 = !DILocation(line: 498, column: 15, scope: !1750)
!1752 = !DILocation(line: 498, column: 13, scope: !1750)
!1753 = !DILocation(line: 499, column: 13, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 499, column: 13)
!1755 = !DILocation(line: 499, column: 18, scope: !1754)
!1756 = !DILocation(line: 499, column: 13, scope: !1750)
!1757 = !DILocation(line: 500, column: 33, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 499, column: 37)
!1759 = !DILocation(line: 500, column: 36, scope: !1758)
!1760 = !DILocation(line: 500, column: 41, scope: !1758)
!1761 = !DILocation(line: 500, column: 58, scope: !1758)
!1762 = !DILocation(line: 500, column: 63, scope: !1758)
!1763 = !DILocation(line: 500, column: 51, scope: !1758)
!1764 = !DILocation(line: 500, column: 13, scope: !1758)
!1765 = !DILocation(line: 501, column: 28, scope: !1758)
!1766 = !DILocation(line: 501, column: 31, scope: !1758)
!1767 = !DILocation(line: 501, column: 36, scope: !1758)
!1768 = !DILocation(line: 501, column: 13, scope: !1758)
!1769 = !DILocation(line: 502, column: 15, scope: !1758)
!1770 = !DILocation(line: 502, column: 33, scope: !1758)
!1771 = !DILocation(line: 503, column: 9, scope: !1758)
!1772 = !DILocation(line: 505, column: 13, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 505, column: 13)
!1774 = !DILocation(line: 505, column: 18, scope: !1773)
!1775 = !DILocation(line: 505, column: 13, scope: !1750)
!1776 = !DILocation(line: 506, column: 39, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 505, column: 31)
!1778 = !DILocation(line: 506, column: 42, scope: !1777)
!1779 = !DILocation(line: 506, column: 47, scope: !1777)
!1780 = !DILocation(line: 506, column: 65, scope: !1777)
!1781 = !DILocation(line: 506, column: 13, scope: !1777)
!1782 = !DILocation(line: 507, column: 9, scope: !1777)
!1783 = distinct !{!1783, !1744, !1784, !912}
!1784 = !DILocation(line: 508, column: 5, scope: !1726)
!1785 = !DILocation(line: 509, column: 25, scope: !1726)
!1786 = !DILocation(line: 509, column: 5, scope: !1726)
!1787 = !DILocation(line: 510, column: 1, scope: !1726)
!1788 = distinct !DISubprogram(name: "sdslen", scope: !383, file: !383, line: 87, type: !1789, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !710)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!196, !1791}
!1791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!1792 = !DILocalVariable(name: "s", arg: 1, scope: !1788, file: !383, line: 87, type: !1791)
!1793 = !DILocation(line: 87, column: 39, scope: !1788)
!1794 = !DILocalVariable(name: "flags", scope: !1788, file: !383, line: 88, type: !524)
!1795 = !DILocation(line: 88, column: 19, scope: !1788)
!1796 = !DILocation(line: 88, column: 27, scope: !1788)
!1797 = !DILocation(line: 89, column: 12, scope: !1788)
!1798 = !DILocation(line: 89, column: 17, scope: !1788)
!1799 = !DILocation(line: 89, column: 5, scope: !1788)
!1800 = !DILocation(line: 91, column: 20, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1788, file: !383, line: 89, column: 33)
!1802 = !DILocation(line: 91, column: 13, scope: !1801)
!1803 = !DILocation(line: 93, column: 20, scope: !1801)
!1804 = !DILocation(line: 93, column: 34, scope: !1801)
!1805 = !DILocation(line: 93, column: 13, scope: !1801)
!1806 = !DILocation(line: 95, column: 20, scope: !1801)
!1807 = !DILocation(line: 95, column: 35, scope: !1801)
!1808 = !DILocation(line: 95, column: 13, scope: !1801)
!1809 = !DILocation(line: 97, column: 20, scope: !1801)
!1810 = !DILocation(line: 97, column: 35, scope: !1801)
!1811 = !DILocation(line: 97, column: 13, scope: !1801)
!1812 = !DILocation(line: 99, column: 20, scope: !1801)
!1813 = !DILocation(line: 99, column: 35, scope: !1801)
!1814 = !DILocation(line: 99, column: 13, scope: !1801)
!1815 = !DILocation(line: 101, column: 5, scope: !1788)
!1816 = !DILocation(line: 102, column: 1, scope: !1788)
!1817 = distinct !DISubprogram(name: "latencySpecificCommandsFillCDF", scope: !3, file: !3, line: 514, type: !98, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !710)
!1818 = !DILocalVariable(name: "c", arg: 1, scope: !1817, file: !3, line: 514, type: !100)
!1819 = !DILocation(line: 514, column: 45, scope: !1817)
!1820 = !DILocalVariable(name: "replylen", scope: !1817, file: !3, line: 515, type: !60)
!1821 = !DILocation(line: 515, column: 11, scope: !1817)
!1822 = !DILocation(line: 515, column: 42, scope: !1817)
!1823 = !DILocation(line: 515, column: 22, scope: !1817)
!1824 = !DILocalVariable(name: "command_with_data", scope: !1817, file: !3, line: 516, type: !81)
!1825 = !DILocation(line: 516, column: 9, scope: !1817)
!1826 = !DILocalVariable(name: "j", scope: !1827, file: !3, line: 517, type: !81)
!1827 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 517, column: 5)
!1828 = !DILocation(line: 517, column: 14, scope: !1827)
!1829 = !DILocation(line: 517, column: 10, scope: !1827)
!1830 = !DILocation(line: 517, column: 21, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 517, column: 5)
!1832 = !DILocation(line: 517, column: 25, scope: !1831)
!1833 = !DILocation(line: 517, column: 28, scope: !1831)
!1834 = !DILocation(line: 517, column: 23, scope: !1831)
!1835 = !DILocation(line: 517, column: 5, scope: !1827)
!1836 = !DILocalVariable(name: "cmd", scope: !1837, file: !3, line: 518, type: !70)
!1837 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 517, column: 38)
!1838 = !DILocation(line: 518, column: 30, scope: !1837)
!1839 = !DILocation(line: 518, column: 55, scope: !1837)
!1840 = !DILocation(line: 518, column: 58, scope: !1837)
!1841 = !DILocation(line: 518, column: 63, scope: !1837)
!1842 = !DILocation(line: 518, column: 67, scope: !1837)
!1843 = !DILocation(line: 518, column: 36, scope: !1837)
!1844 = !DILocation(line: 520, column: 13, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1837, file: !3, line: 520, column: 13)
!1846 = !DILocation(line: 520, column: 17, scope: !1845)
!1847 = !DILocation(line: 520, column: 13, scope: !1837)
!1848 = !DILocation(line: 521, column: 13, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 520, column: 26)
!1850 = !DILocation(line: 524, column: 13, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1837, file: !3, line: 524, column: 13)
!1852 = !DILocation(line: 524, column: 18, scope: !1851)
!1853 = !DILocation(line: 524, column: 13, scope: !1837)
!1854 = !DILocation(line: 525, column: 33, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 524, column: 37)
!1856 = !DILocation(line: 525, column: 36, scope: !1855)
!1857 = !DILocation(line: 525, column: 41, scope: !1855)
!1858 = !DILocation(line: 525, column: 58, scope: !1855)
!1859 = !DILocation(line: 525, column: 63, scope: !1855)
!1860 = !DILocation(line: 525, column: 51, scope: !1855)
!1861 = !DILocation(line: 525, column: 13, scope: !1855)
!1862 = !DILocation(line: 526, column: 28, scope: !1855)
!1863 = !DILocation(line: 526, column: 31, scope: !1855)
!1864 = !DILocation(line: 526, column: 36, scope: !1855)
!1865 = !DILocation(line: 526, column: 13, scope: !1855)
!1866 = !DILocation(line: 527, column: 30, scope: !1855)
!1867 = !DILocation(line: 528, column: 9, scope: !1855)
!1868 = !DILocation(line: 530, column: 13, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1837, file: !3, line: 530, column: 13)
!1870 = !DILocation(line: 530, column: 18, scope: !1869)
!1871 = !DILocation(line: 530, column: 13, scope: !1837)
!1872 = !DILocalVariable(name: "de", scope: !1873, file: !3, line: 531, type: !302)
!1873 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 530, column: 36)
!1874 = !DILocation(line: 531, column: 24, scope: !1873)
!1875 = !DILocalVariable(name: "di", scope: !1873, file: !3, line: 532, type: !867)
!1876 = !DILocation(line: 532, column: 27, scope: !1873)
!1877 = !DILocation(line: 532, column: 52, scope: !1873)
!1878 = !DILocation(line: 532, column: 57, scope: !1873)
!1879 = !DILocation(line: 532, column: 32, scope: !1873)
!1880 = !DILocation(line: 534, column: 13, scope: !1873)
!1881 = !DILocation(line: 534, column: 35, scope: !1873)
!1882 = !DILocation(line: 534, column: 26, scope: !1873)
!1883 = !DILocation(line: 534, column: 24, scope: !1873)
!1884 = !DILocation(line: 534, column: 40, scope: !1873)
!1885 = !DILocalVariable(name: "sub", scope: !1886, file: !3, line: 535, type: !70)
!1886 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 534, column: 49)
!1887 = !DILocation(line: 535, column: 38, scope: !1886)
!1888 = !DILocation(line: 535, column: 44, scope: !1886)
!1889 = !DILocation(line: 536, column: 21, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 536, column: 21)
!1891 = !DILocation(line: 536, column: 26, scope: !1890)
!1892 = !DILocation(line: 536, column: 21, scope: !1886)
!1893 = !DILocation(line: 537, column: 41, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 536, column: 45)
!1895 = !DILocation(line: 537, column: 44, scope: !1894)
!1896 = !DILocation(line: 537, column: 49, scope: !1894)
!1897 = !DILocation(line: 537, column: 66, scope: !1894)
!1898 = !DILocation(line: 537, column: 71, scope: !1894)
!1899 = !DILocation(line: 537, column: 59, scope: !1894)
!1900 = !DILocation(line: 537, column: 21, scope: !1894)
!1901 = !DILocation(line: 538, column: 36, scope: !1894)
!1902 = !DILocation(line: 538, column: 39, scope: !1894)
!1903 = !DILocation(line: 538, column: 44, scope: !1894)
!1904 = !DILocation(line: 538, column: 21, scope: !1894)
!1905 = !DILocation(line: 539, column: 38, scope: !1894)
!1906 = !DILocation(line: 540, column: 17, scope: !1894)
!1907 = distinct !{!1907, !1880, !1908, !912}
!1908 = !DILocation(line: 541, column: 13, scope: !1873)
!1909 = !DILocation(line: 542, column: 33, scope: !1873)
!1910 = !DILocation(line: 542, column: 13, scope: !1873)
!1911 = !DILocation(line: 543, column: 9, scope: !1873)
!1912 = !DILocation(line: 544, column: 5, scope: !1837)
!1913 = !DILocation(line: 517, column: 35, scope: !1831)
!1914 = !DILocation(line: 517, column: 5, scope: !1831)
!1915 = distinct !{!1915, !1835, !1916, !912}
!1916 = !DILocation(line: 544, column: 5, scope: !1827)
!1917 = !DILocation(line: 545, column: 23, scope: !1817)
!1918 = !DILocation(line: 545, column: 25, scope: !1817)
!1919 = !DILocation(line: 545, column: 34, scope: !1817)
!1920 = !DILocation(line: 545, column: 5, scope: !1817)
!1921 = !DILocation(line: 546, column: 1, scope: !1817)
!1922 = distinct !DISubprogram(name: "latencyCommandReplyWithSamples", scope: !3, file: !3, line: 550, type: !1923, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !710)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null, !100, !750}
!1925 = !DILocalVariable(name: "c", arg: 1, scope: !1922, file: !3, line: 550, type: !100)
!1926 = !DILocation(line: 550, column: 45, scope: !1922)
!1927 = !DILocalVariable(name: "ts", arg: 2, scope: !1922, file: !3, line: 550, type: !750)
!1928 = !DILocation(line: 550, column: 74, scope: !1922)
!1929 = !DILocalVariable(name: "replylen", scope: !1922, file: !3, line: 551, type: !60)
!1930 = !DILocation(line: 551, column: 11, scope: !1922)
!1931 = !DILocation(line: 551, column: 42, scope: !1922)
!1932 = !DILocation(line: 551, column: 22, scope: !1922)
!1933 = !DILocalVariable(name: "samples", scope: !1922, file: !3, line: 552, type: !81)
!1934 = !DILocation(line: 552, column: 9, scope: !1922)
!1935 = !DILocalVariable(name: "j", scope: !1922, file: !3, line: 552, type: !81)
!1936 = !DILocation(line: 552, column: 22, scope: !1922)
!1937 = !DILocation(line: 554, column: 12, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 554, column: 5)
!1939 = !DILocation(line: 554, column: 10, scope: !1938)
!1940 = !DILocation(line: 554, column: 17, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 554, column: 5)
!1942 = !DILocation(line: 554, column: 19, scope: !1941)
!1943 = !DILocation(line: 554, column: 5, scope: !1938)
!1944 = !DILocalVariable(name: "i", scope: !1945, file: !3, line: 555, type: !81)
!1945 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 554, column: 42)
!1946 = !DILocation(line: 555, column: 13, scope: !1945)
!1947 = !DILocation(line: 555, column: 18, scope: !1945)
!1948 = !DILocation(line: 555, column: 22, scope: !1945)
!1949 = !DILocation(line: 555, column: 28, scope: !1945)
!1950 = !DILocation(line: 555, column: 26, scope: !1945)
!1951 = !DILocation(line: 555, column: 31, scope: !1945)
!1952 = !DILocation(line: 557, column: 13, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 557, column: 13)
!1954 = !DILocation(line: 557, column: 17, scope: !1953)
!1955 = !DILocation(line: 557, column: 25, scope: !1953)
!1956 = !DILocation(line: 557, column: 28, scope: !1953)
!1957 = !DILocation(line: 557, column: 33, scope: !1953)
!1958 = !DILocation(line: 557, column: 13, scope: !1945)
!1959 = !DILocation(line: 557, column: 39, scope: !1953)
!1960 = !DILocation(line: 558, column: 26, scope: !1945)
!1961 = !DILocation(line: 558, column: 9, scope: !1945)
!1962 = !DILocation(line: 559, column: 26, scope: !1945)
!1963 = !DILocation(line: 559, column: 28, scope: !1945)
!1964 = !DILocation(line: 559, column: 32, scope: !1945)
!1965 = !DILocation(line: 559, column: 40, scope: !1945)
!1966 = !DILocation(line: 559, column: 43, scope: !1945)
!1967 = !DILocation(line: 559, column: 9, scope: !1945)
!1968 = !DILocation(line: 560, column: 26, scope: !1945)
!1969 = !DILocation(line: 560, column: 28, scope: !1945)
!1970 = !DILocation(line: 560, column: 32, scope: !1945)
!1971 = !DILocation(line: 560, column: 40, scope: !1945)
!1972 = !DILocation(line: 560, column: 43, scope: !1945)
!1973 = !DILocation(line: 560, column: 9, scope: !1945)
!1974 = !DILocation(line: 561, column: 16, scope: !1945)
!1975 = !DILocation(line: 562, column: 5, scope: !1945)
!1976 = !DILocation(line: 554, column: 38, scope: !1941)
!1977 = !DILocation(line: 554, column: 5, scope: !1941)
!1978 = distinct !{!1978, !1943, !1979, !912}
!1979 = !DILocation(line: 562, column: 5, scope: !1938)
!1980 = !DILocation(line: 563, column: 25, scope: !1922)
!1981 = !DILocation(line: 563, column: 27, scope: !1922)
!1982 = !DILocation(line: 563, column: 36, scope: !1922)
!1983 = !DILocation(line: 563, column: 5, scope: !1922)
!1984 = !DILocation(line: 564, column: 1, scope: !1922)
!1985 = distinct !DISubprogram(name: "latencyCommandReplyWithLatestEvents", scope: !3, file: !3, line: 568, type: !98, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !710)
!1986 = !DILocalVariable(name: "c", arg: 1, scope: !1985, file: !3, line: 568, type: !100)
!1987 = !DILocation(line: 568, column: 50, scope: !1985)
!1988 = !DILocalVariable(name: "di", scope: !1985, file: !3, line: 569, type: !867)
!1989 = !DILocation(line: 569, column: 19, scope: !1985)
!1990 = !DILocalVariable(name: "de", scope: !1985, file: !3, line: 570, type: !302)
!1991 = !DILocation(line: 570, column: 16, scope: !1985)
!1992 = !DILocation(line: 572, column: 22, scope: !1985)
!1993 = !DILocation(line: 572, column: 24, scope: !1985)
!1994 = !DILocation(line: 572, column: 5, scope: !1985)
!1995 = !DILocation(line: 573, column: 33, scope: !1985)
!1996 = !DILocation(line: 573, column: 10, scope: !1985)
!1997 = !DILocation(line: 573, column: 8, scope: !1985)
!1998 = !DILocation(line: 574, column: 5, scope: !1985)
!1999 = !DILocation(line: 574, column: 26, scope: !1985)
!2000 = !DILocation(line: 574, column: 17, scope: !1985)
!2001 = !DILocation(line: 574, column: 15, scope: !1985)
!2002 = !DILocation(line: 574, column: 31, scope: !1985)
!2003 = !DILocalVariable(name: "event", scope: !2004, file: !3, line: 575, type: !238)
!2004 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 574, column: 40)
!2005 = !DILocation(line: 575, column: 15, scope: !2004)
!2006 = !DILocation(line: 575, column: 23, scope: !2004)
!2007 = !DILocalVariable(name: "ts", scope: !2004, file: !3, line: 576, type: !750)
!2008 = !DILocation(line: 576, column: 35, scope: !2004)
!2009 = !DILocation(line: 576, column: 40, scope: !2004)
!2010 = !DILocalVariable(name: "last", scope: !2004, file: !3, line: 577, type: !81)
!2011 = !DILocation(line: 577, column: 13, scope: !2004)
!2012 = !DILocation(line: 577, column: 21, scope: !2004)
!2013 = !DILocation(line: 577, column: 25, scope: !2004)
!2014 = !DILocation(line: 577, column: 29, scope: !2004)
!2015 = !DILocation(line: 577, column: 46, scope: !2004)
!2016 = !DILocation(line: 577, column: 51, scope: !2004)
!2017 = !DILocation(line: 579, column: 26, scope: !2004)
!2018 = !DILocation(line: 579, column: 9, scope: !2004)
!2019 = !DILocation(line: 580, column: 29, scope: !2004)
!2020 = !DILocation(line: 580, column: 31, scope: !2004)
!2021 = !DILocation(line: 580, column: 9, scope: !2004)
!2022 = !DILocation(line: 581, column: 26, scope: !2004)
!2023 = !DILocation(line: 581, column: 28, scope: !2004)
!2024 = !DILocation(line: 581, column: 32, scope: !2004)
!2025 = !DILocation(line: 581, column: 40, scope: !2004)
!2026 = !DILocation(line: 581, column: 46, scope: !2004)
!2027 = !DILocation(line: 581, column: 9, scope: !2004)
!2028 = !DILocation(line: 582, column: 26, scope: !2004)
!2029 = !DILocation(line: 582, column: 28, scope: !2004)
!2030 = !DILocation(line: 582, column: 32, scope: !2004)
!2031 = !DILocation(line: 582, column: 40, scope: !2004)
!2032 = !DILocation(line: 582, column: 46, scope: !2004)
!2033 = !DILocation(line: 582, column: 9, scope: !2004)
!2034 = !DILocation(line: 583, column: 26, scope: !2004)
!2035 = !DILocation(line: 583, column: 28, scope: !2004)
!2036 = !DILocation(line: 583, column: 32, scope: !2004)
!2037 = !DILocation(line: 583, column: 9, scope: !2004)
!2038 = distinct !{!2038, !1998, !2039, !912}
!2039 = !DILocation(line: 584, column: 5, scope: !1985)
!2040 = !DILocation(line: 585, column: 25, scope: !1985)
!2041 = !DILocation(line: 585, column: 5, scope: !1985)
!2042 = !DILocation(line: 586, column: 1, scope: !1985)
!2043 = distinct !DISubprogram(name: "latencyCommandGenSparkeline", scope: !3, file: !3, line: 589, type: !2044, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !710)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!382, !238, !750}
!2046 = !DILocalVariable(name: "event", arg: 1, scope: !2043, file: !3, line: 589, type: !238)
!2047 = !DILocation(line: 589, column: 39, scope: !2043)
!2048 = !DILocalVariable(name: "ts", arg: 2, scope: !2043, file: !3, line: 589, type: !750)
!2049 = !DILocation(line: 589, column: 72, scope: !2043)
!2050 = !DILocalVariable(name: "j", scope: !2043, file: !3, line: 590, type: !81)
!2051 = !DILocation(line: 590, column: 9, scope: !2043)
!2052 = !DILocalVariable(name: "seq", scope: !2043, file: !3, line: 591, type: !2053)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sequence", file: !2055, line: 39, size: 256, elements: !2056)
!2055 = !DIFile(filename: "./sparkline.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!2056 = !{!2057, !2058, !2059, !2065, !2066}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2054, file: !2055, line: 40, baseType: !81, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "labels", scope: !2054, file: !2055, line: 41, baseType: !81, size: 32, offset: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "samples", scope: !2054, file: !2055, line: 42, baseType: !2060, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sample", file: !2055, line: 34, size: 128, elements: !2062)
!2062 = !{!2063, !2064}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2061, file: !2055, line: 35, baseType: !67, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !2061, file: !2055, line: 36, baseType: !238, size: 64, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2054, file: !2055, line: 43, baseType: !67, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2054, file: !2055, line: 43, baseType: !67, size: 64, offset: 192)
!2067 = !DILocation(line: 591, column: 22, scope: !2043)
!2068 = !DILocation(line: 591, column: 28, scope: !2043)
!2069 = !DILocalVariable(name: "graph", scope: !2043, file: !3, line: 592, type: !382)
!2070 = !DILocation(line: 592, column: 9, scope: !2043)
!2071 = !DILocation(line: 592, column: 17, scope: !2043)
!2072 = !DILocalVariable(name: "min", scope: !2043, file: !3, line: 593, type: !403)
!2073 = !DILocation(line: 593, column: 14, scope: !2043)
!2074 = !DILocalVariable(name: "max", scope: !2043, file: !3, line: 593, type: !403)
!2075 = !DILocation(line: 593, column: 23, scope: !2043)
!2076 = !DILocation(line: 595, column: 12, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 595, column: 5)
!2078 = !DILocation(line: 595, column: 10, scope: !2077)
!2079 = !DILocation(line: 595, column: 17, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 595, column: 5)
!2081 = !DILocation(line: 595, column: 19, scope: !2080)
!2082 = !DILocation(line: 595, column: 5, scope: !2077)
!2083 = !DILocalVariable(name: "i", scope: !2084, file: !3, line: 596, type: !81)
!2084 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 595, column: 42)
!2085 = !DILocation(line: 596, column: 13, scope: !2084)
!2086 = !DILocation(line: 596, column: 18, scope: !2084)
!2087 = !DILocation(line: 596, column: 22, scope: !2084)
!2088 = !DILocation(line: 596, column: 28, scope: !2084)
!2089 = !DILocation(line: 596, column: 26, scope: !2084)
!2090 = !DILocation(line: 596, column: 31, scope: !2084)
!2091 = !DILocalVariable(name: "elapsed", scope: !2084, file: !3, line: 597, type: !81)
!2092 = !DILocation(line: 597, column: 13, scope: !2084)
!2093 = !DILocalVariable(name: "buf", scope: !2084, file: !3, line: 598, type: !2094)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 512, elements: !2095)
!2095 = !{!2096}
!2096 = !DISubrange(count: 64)
!2097 = !DILocation(line: 598, column: 14, scope: !2084)
!2098 = !DILocation(line: 600, column: 13, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 600, column: 13)
!2100 = !DILocation(line: 600, column: 17, scope: !2099)
!2101 = !DILocation(line: 600, column: 25, scope: !2099)
!2102 = !DILocation(line: 600, column: 28, scope: !2099)
!2103 = !DILocation(line: 600, column: 33, scope: !2099)
!2104 = !DILocation(line: 600, column: 13, scope: !2084)
!2105 = !DILocation(line: 600, column: 39, scope: !2099)
!2106 = !DILocation(line: 602, column: 13, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 602, column: 13)
!2108 = !DILocation(line: 602, column: 18, scope: !2107)
!2109 = !DILocation(line: 602, column: 25, scope: !2107)
!2110 = !DILocation(line: 602, column: 13, scope: !2084)
!2111 = !DILocation(line: 603, column: 25, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 602, column: 31)
!2113 = !DILocation(line: 603, column: 29, scope: !2112)
!2114 = !DILocation(line: 603, column: 37, scope: !2112)
!2115 = !DILocation(line: 603, column: 40, scope: !2112)
!2116 = !DILocation(line: 603, column: 23, scope: !2112)
!2117 = !DILocation(line: 603, column: 17, scope: !2112)
!2118 = !DILocation(line: 604, column: 9, scope: !2112)
!2119 = !DILocation(line: 605, column: 17, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 605, column: 17)
!2121 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 604, column: 16)
!2122 = !DILocation(line: 605, column: 21, scope: !2120)
!2123 = !DILocation(line: 605, column: 29, scope: !2120)
!2124 = !DILocation(line: 605, column: 32, scope: !2120)
!2125 = !DILocation(line: 605, column: 42, scope: !2120)
!2126 = !DILocation(line: 605, column: 40, scope: !2120)
!2127 = !DILocation(line: 605, column: 17, scope: !2121)
!2128 = !DILocation(line: 605, column: 53, scope: !2120)
!2129 = !DILocation(line: 605, column: 57, scope: !2120)
!2130 = !DILocation(line: 605, column: 65, scope: !2120)
!2131 = !DILocation(line: 605, column: 68, scope: !2120)
!2132 = !DILocation(line: 605, column: 51, scope: !2120)
!2133 = !DILocation(line: 605, column: 47, scope: !2120)
!2134 = !DILocation(line: 606, column: 17, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 606, column: 17)
!2136 = !DILocation(line: 606, column: 21, scope: !2135)
!2137 = !DILocation(line: 606, column: 29, scope: !2135)
!2138 = !DILocation(line: 606, column: 32, scope: !2135)
!2139 = !DILocation(line: 606, column: 42, scope: !2135)
!2140 = !DILocation(line: 606, column: 40, scope: !2135)
!2141 = !DILocation(line: 606, column: 17, scope: !2121)
!2142 = !DILocation(line: 606, column: 53, scope: !2135)
!2143 = !DILocation(line: 606, column: 57, scope: !2135)
!2144 = !DILocation(line: 606, column: 65, scope: !2135)
!2145 = !DILocation(line: 606, column: 68, scope: !2135)
!2146 = !DILocation(line: 606, column: 51, scope: !2135)
!2147 = !DILocation(line: 606, column: 47, scope: !2135)
!2148 = !DILocation(line: 610, column: 19, scope: !2084)
!2149 = !DILocation(line: 610, column: 32, scope: !2084)
!2150 = !DILocation(line: 610, column: 36, scope: !2084)
!2151 = !DILocation(line: 610, column: 44, scope: !2084)
!2152 = !DILocation(line: 610, column: 47, scope: !2084)
!2153 = !DILocation(line: 610, column: 30, scope: !2084)
!2154 = !DILocation(line: 610, column: 17, scope: !2084)
!2155 = !DILocation(line: 611, column: 13, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 611, column: 13)
!2157 = !DILocation(line: 611, column: 21, scope: !2156)
!2158 = !DILocation(line: 611, column: 13, scope: !2084)
!2159 = !DILocation(line: 612, column: 22, scope: !2156)
!2160 = !DILocation(line: 612, column: 44, scope: !2156)
!2161 = !DILocation(line: 612, column: 13, scope: !2156)
!2162 = !DILocation(line: 613, column: 18, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 613, column: 18)
!2164 = !DILocation(line: 613, column: 26, scope: !2163)
!2165 = !DILocation(line: 613, column: 18, scope: !2156)
!2166 = !DILocation(line: 614, column: 22, scope: !2163)
!2167 = !DILocation(line: 614, column: 44, scope: !2163)
!2168 = !DILocation(line: 614, column: 51, scope: !2163)
!2169 = !DILocation(line: 614, column: 13, scope: !2163)
!2170 = !DILocation(line: 615, column: 18, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 615, column: 18)
!2172 = !DILocation(line: 615, column: 26, scope: !2171)
!2173 = !DILocation(line: 615, column: 18, scope: !2163)
!2174 = !DILocation(line: 616, column: 22, scope: !2171)
!2175 = !DILocation(line: 616, column: 44, scope: !2171)
!2176 = !DILocation(line: 616, column: 51, scope: !2171)
!2177 = !DILocation(line: 616, column: 13, scope: !2171)
!2178 = !DILocation(line: 618, column: 22, scope: !2171)
!2179 = !DILocation(line: 618, column: 44, scope: !2171)
!2180 = !DILocation(line: 618, column: 51, scope: !2171)
!2181 = !DILocation(line: 618, column: 13, scope: !2171)
!2182 = !DILocation(line: 619, column: 36, scope: !2084)
!2183 = !DILocation(line: 619, column: 40, scope: !2084)
!2184 = !DILocation(line: 619, column: 44, scope: !2084)
!2185 = !DILocation(line: 619, column: 52, scope: !2084)
!2186 = !DILocation(line: 619, column: 55, scope: !2084)
!2187 = !DILocation(line: 619, column: 63, scope: !2084)
!2188 = !DILocation(line: 619, column: 9, scope: !2084)
!2189 = !DILocation(line: 620, column: 5, scope: !2084)
!2190 = !DILocation(line: 595, column: 38, scope: !2080)
!2191 = !DILocation(line: 595, column: 5, scope: !2080)
!2192 = distinct !{!2192, !2082, !2193, !912}
!2193 = !DILocation(line: 620, column: 5, scope: !2077)
!2194 = !DILocation(line: 622, column: 26, scope: !2043)
!2195 = !DILocation(line: 623, column: 66, scope: !2043)
!2196 = !DILocation(line: 624, column: 25, scope: !2043)
!2197 = !DILocation(line: 624, column: 9, scope: !2043)
!2198 = !DILocation(line: 624, column: 46, scope: !2043)
!2199 = !DILocation(line: 624, column: 30, scope: !2043)
!2200 = !DILocation(line: 624, column: 67, scope: !2043)
!2201 = !DILocation(line: 624, column: 71, scope: !2043)
!2202 = !DILocation(line: 624, column: 51, scope: !2043)
!2203 = !DILocation(line: 622, column: 13, scope: !2043)
!2204 = !DILocation(line: 622, column: 11, scope: !2043)
!2205 = !DILocation(line: 625, column: 12, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 625, column: 5)
!2207 = !DILocation(line: 625, column: 10, scope: !2206)
!2208 = !DILocation(line: 625, column: 17, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 625, column: 5)
!2210 = !DILocation(line: 625, column: 19, scope: !2209)
!2211 = !DILocation(line: 625, column: 5, scope: !2206)
!2212 = !DILocation(line: 626, column: 27, scope: !2209)
!2213 = !DILocation(line: 626, column: 17, scope: !2209)
!2214 = !DILocation(line: 626, column: 15, scope: !2209)
!2215 = !DILocation(line: 626, column: 9, scope: !2209)
!2216 = !DILocation(line: 625, column: 42, scope: !2209)
!2217 = !DILocation(line: 625, column: 5, scope: !2209)
!2218 = distinct !{!2218, !2211, !2219, !912}
!2219 = !DILocation(line: 626, column: 38, scope: !2206)
!2220 = !DILocation(line: 627, column: 23, scope: !2043)
!2221 = !DILocation(line: 627, column: 13, scope: !2043)
!2222 = !DILocation(line: 627, column: 11, scope: !2043)
!2223 = !DILocation(line: 628, column: 29, scope: !2043)
!2224 = !DILocation(line: 628, column: 35, scope: !2043)
!2225 = !DILocation(line: 628, column: 13, scope: !2043)
!2226 = !DILocation(line: 628, column: 11, scope: !2043)
!2227 = !DILocation(line: 629, column: 27, scope: !2043)
!2228 = !DILocation(line: 629, column: 5, scope: !2043)
!2229 = !DILocation(line: 630, column: 12, scope: !2043)
!2230 = !DILocation(line: 630, column: 5, scope: !2043)
!2231 = distinct !DISubprogram(name: "latencyCommand", scope: !3, file: !3, line: 642, type: !98, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !710)
!2232 = !DILocalVariable(name: "c", arg: 1, scope: !2231, file: !3, line: 642, type: !100)
!2233 = !DILocation(line: 642, column: 29, scope: !2231)
!2234 = !DILocalVariable(name: "ts", scope: !2231, file: !3, line: 643, type: !750)
!2235 = !DILocation(line: 643, column: 31, scope: !2231)
!2236 = !DILocation(line: 645, column: 21, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 645, column: 9)
!2238 = !DILocation(line: 645, column: 24, scope: !2237)
!2239 = !DILocation(line: 645, column: 33, scope: !2237)
!2240 = !DILocation(line: 645, column: 10, scope: !2237)
!2241 = !DILocation(line: 645, column: 48, scope: !2237)
!2242 = !DILocation(line: 645, column: 51, scope: !2237)
!2243 = !DILocation(line: 645, column: 54, scope: !2237)
!2244 = !DILocation(line: 645, column: 59, scope: !2237)
!2245 = !DILocation(line: 645, column: 9, scope: !2231)
!2246 = !DILocation(line: 647, column: 36, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 645, column: 65)
!2248 = !DILocation(line: 647, column: 51, scope: !2247)
!2249 = !DILocation(line: 647, column: 54, scope: !2247)
!2250 = !DILocation(line: 647, column: 63, scope: !2247)
!2251 = !DILocation(line: 647, column: 14, scope: !2247)
!2252 = !DILocation(line: 647, column: 12, scope: !2247)
!2253 = !DILocation(line: 648, column: 13, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 648, column: 13)
!2255 = !DILocation(line: 648, column: 16, scope: !2254)
!2256 = !DILocation(line: 648, column: 13, scope: !2247)
!2257 = !DILocation(line: 649, column: 30, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 648, column: 25)
!2259 = !DILocation(line: 649, column: 13, scope: !2258)
!2260 = !DILocation(line: 650, column: 9, scope: !2258)
!2261 = !DILocation(line: 651, column: 44, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 650, column: 16)
!2263 = !DILocation(line: 651, column: 46, scope: !2262)
!2264 = !DILocation(line: 651, column: 13, scope: !2262)
!2265 = !DILocation(line: 653, column: 5, scope: !2247)
!2266 = !DILocation(line: 653, column: 28, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 653, column: 16)
!2268 = !DILocation(line: 653, column: 31, scope: !2267)
!2269 = !DILocation(line: 653, column: 40, scope: !2267)
!2270 = !DILocation(line: 653, column: 17, scope: !2267)
!2271 = !DILocation(line: 653, column: 53, scope: !2267)
!2272 = !DILocation(line: 653, column: 56, scope: !2267)
!2273 = !DILocation(line: 653, column: 59, scope: !2267)
!2274 = !DILocation(line: 653, column: 64, scope: !2267)
!2275 = !DILocation(line: 653, column: 16, scope: !2237)
!2276 = !DILocalVariable(name: "graph", scope: !2277, file: !3, line: 655, type: !382)
!2277 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 653, column: 70)
!2278 = !DILocation(line: 655, column: 13, scope: !2277)
!2279 = !DILocalVariable(name: "de", scope: !2277, file: !3, line: 656, type: !302)
!2280 = !DILocation(line: 656, column: 20, scope: !2277)
!2281 = !DILocalVariable(name: "event", scope: !2277, file: !3, line: 657, type: !238)
!2282 = !DILocation(line: 657, column: 15, scope: !2277)
!2283 = !DILocation(line: 659, column: 30, scope: !2277)
!2284 = !DILocation(line: 659, column: 45, scope: !2277)
!2285 = !DILocation(line: 659, column: 48, scope: !2277)
!2286 = !DILocation(line: 659, column: 57, scope: !2277)
!2287 = !DILocation(line: 659, column: 14, scope: !2277)
!2288 = !DILocation(line: 659, column: 12, scope: !2277)
!2289 = !DILocation(line: 660, column: 13, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 660, column: 13)
!2291 = !DILocation(line: 660, column: 16, scope: !2290)
!2292 = !DILocation(line: 660, column: 13, scope: !2277)
!2293 = !DILocation(line: 660, column: 25, scope: !2290)
!2294 = !DILocation(line: 661, column: 14, scope: !2277)
!2295 = !DILocation(line: 661, column: 12, scope: !2277)
!2296 = !DILocation(line: 662, column: 17, scope: !2277)
!2297 = !DILocation(line: 662, column: 15, scope: !2277)
!2298 = !DILocation(line: 664, column: 45, scope: !2277)
!2299 = !DILocation(line: 664, column: 51, scope: !2277)
!2300 = !DILocation(line: 664, column: 17, scope: !2277)
!2301 = !DILocation(line: 664, column: 15, scope: !2277)
!2302 = !DILocation(line: 665, column: 26, scope: !2277)
!2303 = !DILocation(line: 665, column: 28, scope: !2277)
!2304 = !DILocation(line: 665, column: 41, scope: !2277)
!2305 = !DILocation(line: 665, column: 34, scope: !2277)
!2306 = !DILocation(line: 665, column: 9, scope: !2277)
!2307 = !DILocation(line: 666, column: 17, scope: !2277)
!2308 = !DILocation(line: 666, column: 9, scope: !2277)
!2309 = !DILocation(line: 667, column: 5, scope: !2277)
!2310 = !DILocation(line: 667, column: 28, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 667, column: 16)
!2312 = !DILocation(line: 667, column: 31, scope: !2311)
!2313 = !DILocation(line: 667, column: 40, scope: !2311)
!2314 = !DILocation(line: 667, column: 17, scope: !2311)
!2315 = !DILocation(line: 667, column: 54, scope: !2311)
!2316 = !DILocation(line: 667, column: 57, scope: !2311)
!2317 = !DILocation(line: 667, column: 60, scope: !2311)
!2318 = !DILocation(line: 667, column: 65, scope: !2311)
!2319 = !DILocation(line: 667, column: 16, scope: !2267)
!2320 = !DILocation(line: 669, column: 45, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 667, column: 71)
!2322 = !DILocation(line: 669, column: 9, scope: !2321)
!2323 = !DILocation(line: 670, column: 5, scope: !2321)
!2324 = !DILocation(line: 670, column: 28, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 670, column: 16)
!2326 = !DILocation(line: 670, column: 31, scope: !2325)
!2327 = !DILocation(line: 670, column: 40, scope: !2325)
!2328 = !DILocation(line: 670, column: 17, scope: !2325)
!2329 = !DILocation(line: 670, column: 54, scope: !2325)
!2330 = !DILocation(line: 670, column: 57, scope: !2325)
!2331 = !DILocation(line: 670, column: 60, scope: !2325)
!2332 = !DILocation(line: 670, column: 65, scope: !2325)
!2333 = !DILocation(line: 670, column: 16, scope: !2311)
!2334 = !DILocalVariable(name: "report", scope: !2335, file: !3, line: 672, type: !382)
!2335 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 670, column: 71)
!2336 = !DILocation(line: 672, column: 13, scope: !2335)
!2337 = !DILocation(line: 672, column: 22, scope: !2335)
!2338 = !DILocation(line: 674, column: 26, scope: !2335)
!2339 = !DILocation(line: 674, column: 28, scope: !2335)
!2340 = !DILocation(line: 674, column: 42, scope: !2335)
!2341 = !DILocation(line: 674, column: 35, scope: !2335)
!2342 = !DILocation(line: 674, column: 9, scope: !2335)
!2343 = !DILocation(line: 675, column: 17, scope: !2335)
!2344 = !DILocation(line: 675, column: 9, scope: !2335)
!2345 = !DILocation(line: 676, column: 5, scope: !2335)
!2346 = !DILocation(line: 676, column: 28, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 676, column: 16)
!2348 = !DILocation(line: 676, column: 31, scope: !2347)
!2349 = !DILocation(line: 676, column: 40, scope: !2347)
!2350 = !DILocation(line: 676, column: 17, scope: !2347)
!2351 = !DILocation(line: 676, column: 53, scope: !2347)
!2352 = !DILocation(line: 676, column: 56, scope: !2347)
!2353 = !DILocation(line: 676, column: 59, scope: !2347)
!2354 = !DILocation(line: 676, column: 64, scope: !2347)
!2355 = !DILocation(line: 676, column: 16, scope: !2325)
!2356 = !DILocation(line: 678, column: 13, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 678, column: 13)
!2358 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 676, column: 70)
!2359 = !DILocation(line: 678, column: 16, scope: !2357)
!2360 = !DILocation(line: 678, column: 21, scope: !2357)
!2361 = !DILocation(line: 678, column: 13, scope: !2358)
!2362 = !DILocation(line: 679, column: 30, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 678, column: 27)
!2364 = !DILocation(line: 679, column: 32, scope: !2363)
!2365 = !DILocation(line: 679, column: 13, scope: !2363)
!2366 = !DILocation(line: 680, column: 9, scope: !2363)
!2367 = !DILocalVariable(name: "j", scope: !2368, file: !3, line: 681, type: !81)
!2368 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 680, column: 16)
!2369 = !DILocation(line: 681, column: 17, scope: !2368)
!2370 = !DILocalVariable(name: "resets", scope: !2368, file: !3, line: 681, type: !81)
!2371 = !DILocation(line: 681, column: 20, scope: !2368)
!2372 = !DILocation(line: 683, column: 20, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 683, column: 13)
!2374 = !DILocation(line: 683, column: 18, scope: !2373)
!2375 = !DILocation(line: 683, column: 25, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 683, column: 13)
!2377 = !DILocation(line: 683, column: 29, scope: !2376)
!2378 = !DILocation(line: 683, column: 32, scope: !2376)
!2379 = !DILocation(line: 683, column: 27, scope: !2376)
!2380 = !DILocation(line: 683, column: 13, scope: !2373)
!2381 = !DILocation(line: 684, column: 45, scope: !2376)
!2382 = !DILocation(line: 684, column: 48, scope: !2376)
!2383 = !DILocation(line: 684, column: 53, scope: !2376)
!2384 = !DILocation(line: 684, column: 57, scope: !2376)
!2385 = !DILocation(line: 684, column: 27, scope: !2376)
!2386 = !DILocation(line: 684, column: 24, scope: !2376)
!2387 = !DILocation(line: 684, column: 17, scope: !2376)
!2388 = !DILocation(line: 683, column: 39, scope: !2376)
!2389 = !DILocation(line: 683, column: 13, scope: !2376)
!2390 = distinct !{!2390, !2380, !2391, !912}
!2391 = !DILocation(line: 684, column: 60, scope: !2373)
!2392 = !DILocation(line: 685, column: 30, scope: !2368)
!2393 = !DILocation(line: 685, column: 32, scope: !2368)
!2394 = !DILocation(line: 685, column: 13, scope: !2368)
!2395 = !DILocation(line: 687, column: 5, scope: !2358)
!2396 = !DILocation(line: 687, column: 28, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 687, column: 16)
!2398 = !DILocation(line: 687, column: 31, scope: !2397)
!2399 = !DILocation(line: 687, column: 40, scope: !2397)
!2400 = !DILocation(line: 687, column: 17, scope: !2397)
!2401 = !DILocation(line: 687, column: 57, scope: !2397)
!2402 = !DILocation(line: 687, column: 60, scope: !2397)
!2403 = !DILocation(line: 687, column: 63, scope: !2397)
!2404 = !DILocation(line: 687, column: 68, scope: !2397)
!2405 = !DILocation(line: 687, column: 16, scope: !2347)
!2406 = !DILocation(line: 689, column: 13, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 689, column: 13)
!2408 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 687, column: 74)
!2409 = !DILocation(line: 689, column: 16, scope: !2407)
!2410 = !DILocation(line: 689, column: 21, scope: !2407)
!2411 = !DILocation(line: 689, column: 13, scope: !2408)
!2412 = !DILocalVariable(name: "command_with_data", scope: !2413, file: !3, line: 690, type: !81)
!2413 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 689, column: 27)
!2414 = !DILocation(line: 690, column: 17, scope: !2413)
!2415 = !DILocalVariable(name: "replylen", scope: !2413, file: !3, line: 691, type: !60)
!2416 = !DILocation(line: 691, column: 19, scope: !2413)
!2417 = !DILocation(line: 691, column: 50, scope: !2413)
!2418 = !DILocation(line: 691, column: 30, scope: !2413)
!2419 = !DILocation(line: 692, column: 39, scope: !2413)
!2420 = !DILocation(line: 692, column: 49, scope: !2413)
!2421 = !DILocation(line: 692, column: 13, scope: !2413)
!2422 = !DILocation(line: 693, column: 31, scope: !2413)
!2423 = !DILocation(line: 693, column: 34, scope: !2413)
!2424 = !DILocation(line: 693, column: 44, scope: !2413)
!2425 = !DILocation(line: 693, column: 13, scope: !2413)
!2426 = !DILocation(line: 694, column: 9, scope: !2413)
!2427 = !DILocation(line: 695, column: 44, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 694, column: 16)
!2429 = !DILocation(line: 695, column: 13, scope: !2428)
!2430 = !DILocation(line: 697, column: 5, scope: !2408)
!2431 = !DILocation(line: 697, column: 28, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 697, column: 16)
!2433 = !DILocation(line: 697, column: 31, scope: !2432)
!2434 = !DILocation(line: 697, column: 40, scope: !2432)
!2435 = !DILocation(line: 697, column: 17, scope: !2432)
!2436 = !DILocation(line: 697, column: 52, scope: !2432)
!2437 = !DILocation(line: 697, column: 55, scope: !2432)
!2438 = !DILocation(line: 697, column: 58, scope: !2432)
!2439 = !DILocation(line: 697, column: 63, scope: !2432)
!2440 = !DILocation(line: 697, column: 16, scope: !2397)
!2441 = !DILocalVariable(name: "help", scope: !2442, file: !3, line: 698, type: !2443)
!2442 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 697, column: 69)
!2443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 960, elements: !2444)
!2444 = !{!2445}
!2445 = !DISubrange(count: 15)
!2446 = !DILocation(line: 698, column: 21, scope: !2442)
!2447 = !DILocation(line: 715, column: 22, scope: !2442)
!2448 = !DILocation(line: 715, column: 25, scope: !2442)
!2449 = !DILocation(line: 715, column: 9, scope: !2442)
!2450 = !DILocation(line: 716, column: 5, scope: !2442)
!2451 = !DILocation(line: 717, column: 39, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 716, column: 12)
!2453 = !DILocation(line: 717, column: 9, scope: !2452)
!2454 = !DILocation(line: 719, column: 5, scope: !2231)
!2455 = !DILabel(scope: !2231, name: "nodataerr", file: !3, line: 721)
!2456 = !DILocation(line: 721, column: 1, scope: !2231)
!2457 = !DILocation(line: 724, column: 25, scope: !2231)
!2458 = !DILocation(line: 725, column: 56, scope: !2231)
!2459 = !DILocation(line: 725, column: 59, scope: !2231)
!2460 = !DILocation(line: 725, column: 68, scope: !2231)
!2461 = !DILocation(line: 724, column: 5, scope: !2231)
!2462 = !DILocation(line: 726, column: 1, scope: !2231)
