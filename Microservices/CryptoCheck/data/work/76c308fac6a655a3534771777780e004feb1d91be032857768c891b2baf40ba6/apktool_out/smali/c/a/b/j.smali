.class public Lc/a/b/j;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/a/b/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Lc/a/b/i;

.field public final d:Lc/a/b/b;

.field public final e:Lc/a/b/r;

.field public volatile f:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lc/a/b/i;Lc/a/b/b;Lc/a/b/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/a/b/o<",
            "*>;>;",
            "Lc/a/b/i;",
            "Lc/a/b/b;",
            "Lc/a/b/r;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/b/j;->f:Z

    iput-object p1, p0, Lc/a/b/j;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lc/a/b/j;->c:Lc/a/b/i;

    iput-object p3, p0, Lc/a/b/j;->d:Lc/a/b/b;

    iput-object p4, p0, Lc/a/b/j;->e:Lc/a/b/r;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lc/a/b/j;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/b/o;

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "network-queue-take"

    invoke-virtual {v0, v3}, Lc/a/b/o;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/a/b/o;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "network-discard-cancelled"

    invoke-virtual {v0, v3}, Lc/a/b/o;->c(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lc/a/b/o;->j()V

    goto/16 :goto_2

    .line 2
    :cond_0
    iget v3, v0, Lc/a/b/o;->e:I

    .line 3
    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 4
    iget-object v3, p0, Lc/a/b/j;->c:Lc/a/b/i;
    :try_end_0
    .catch Lc/a/b/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v3, Lc/a/b/w/b;

    :try_start_1
    invoke-virtual {v3, v0}, Lc/a/b/w/b;->f(Lc/a/b/o;)Lc/a/b/l;

    move-result-object v3

    const-string v4, "network-http-complete"

    invoke-virtual {v0, v4}, Lc/a/b/o;->a(Ljava/lang/String;)V

    iget-boolean v4, v3, Lc/a/b/l;->d:Z

    if-eqz v4, :cond_1

    .line 5
    iget-object v4, v0, Lc/a/b/o;->f:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Lc/a/b/u; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-boolean v5, v0, Lc/a/b/o;->l:Z

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_1

    :try_start_3
    const-string v3, "not-modified"

    .line 6
    invoke-virtual {v0, v3}, Lc/a/b/o;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Lc/a/b/u; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 7
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3

    .line 8
    :cond_1
    invoke-virtual {v0, v3}, Lc/a/b/o;->l(Lc/a/b/l;)Lc/a/b/q;

    move-result-object v3

    const-string v4, "network-parse-complete"

    invoke-virtual {v0, v4}, Lc/a/b/o;->a(Ljava/lang/String;)V

    .line 9
    iget-boolean v4, v0, Lc/a/b/o;->j:Z

    if-eqz v4, :cond_2

    .line 10
    iget-object v4, v3, Lc/a/b/q;->b:Lc/a/b/b$a;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lc/a/b/j;->d:Lc/a/b/b;

    invoke-virtual {v0}, Lc/a/b/o;->f()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lc/a/b/q;->b:Lc/a/b/b$a;
    :try_end_5
    .catch Lc/a/b/u; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    check-cast v4, Lc/a/b/w/d;

    :try_start_6
    invoke-virtual {v4, v5, v6}, Lc/a/b/w/d;->e(Ljava/lang/String;Lc/a/b/b$a;)V

    const-string v4, "network-cache-written"

    invoke-virtual {v0, v4}, Lc/a/b/o;->a(Ljava/lang/String;)V

    .line 11
    :cond_2
    iget-object v4, v0, Lc/a/b/o;->f:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6
    .catch Lc/a/b/u; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iput-boolean v1, v0, Lc/a/b/o;->l:Z

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 12
    :try_start_8
    iget-object v4, p0, Lc/a/b/j;->e:Lc/a/b/r;

    check-cast v4, Lc/a/b/g;

    .line 13
    invoke-virtual {v4, v0, v3, v2}, Lc/a/b/g;->a(Lc/a/b/o;Lc/a/b/q;Ljava/lang/Runnable;)V

    .line 14
    invoke-virtual {v0, v3}, Lc/a/b/o;->k(Lc/a/b/q;)V
    :try_end_8
    .catch Lc/a/b/u; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    :catchall_1
    move-exception v3

    .line 15
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v3
    :try_end_a
    .catch Lc/a/b/u; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v3

    const-string v4, "Unhandled exception %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 16
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 17
    invoke-static {v4, v1}, Lc/a/b/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Volley"

    invoke-static {v4, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    new-instance v1, Lc/a/b/u;

    invoke-direct {v1, v3}, Lc/a/b/u;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v3, p0, Lc/a/b/j;->e:Lc/a/b/r;

    check-cast v3, Lc/a/b/g;

    if-eqz v3, :cond_3

    const-string v4, "post-error"

    .line 19
    invoke-virtual {v0, v4}, Lc/a/b/o;->a(Ljava/lang/String;)V

    .line 20
    new-instance v4, Lc/a/b/q;

    invoke-direct {v4, v1}, Lc/a/b/q;-><init>(Lc/a/b/u;)V

    .line 21
    iget-object v1, v3, Lc/a/b/g;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Lc/a/b/g$b;

    invoke-direct {v3, v0, v4, v2}, Lc/a/b/g$b;-><init>(Lc/a/b/o;Lc/a/b/q;Ljava/lang/Runnable;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    throw v2

    :catch_1
    move-exception v1

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    if-eqz v0, :cond_5

    .line 23
    iget-object v3, p0, Lc/a/b/j;->e:Lc/a/b/r;

    check-cast v3, Lc/a/b/g;

    if-eqz v3, :cond_4

    const-string v4, "post-error"

    .line 24
    invoke-virtual {v0, v4}, Lc/a/b/o;->a(Ljava/lang/String;)V

    .line 25
    new-instance v4, Lc/a/b/q;

    invoke-direct {v4, v1}, Lc/a/b/q;-><init>(Lc/a/b/u;)V

    .line 26
    iget-object v1, v3, Lc/a/b/g;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Lc/a/b/g$b;

    invoke-direct {v3, v0, v4, v2}, Lc/a/b/g$b;-><init>(Lc/a/b/o;Lc/a/b/q;Ljava/lang/Runnable;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    :goto_1
    invoke-virtual {v0}, Lc/a/b/o;->j()V

    :goto_2
    return-void

    .line 28
    :cond_4
    throw v2

    .line 29
    :cond_5
    throw v2
.end method

.method public run()V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lc/a/b/j;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lc/a/b/j;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Lc/a/b/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
