.class public final Lc/c/b/h/c0/a/g;
.super Lc/c/b/h/c0/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b/h/c0/a/a<",
        "Lc/c/b/h/c0/a/t0;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lc/c/b/h/c0/a/t0;

.field public final e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lc/c/b/h/c0/a/c<",
            "Lc/c/b/h/c0/a/t0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/b/h/c0/a/t0;)V
    .locals 0

    invoke-direct {p0}, Lc/c/b/h/c0/a/a;-><init>()V

    iput-object p1, p0, Lc/c/b/h/c0/a/g;->c:Landroid/content/Context;

    iput-object p2, p0, Lc/c/b/h/c0/a/g;->d:Lc/c/b/h/c0/a/t0;

    invoke-virtual {p0}, Lc/c/b/h/c0/a/g;->c()Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lc/c/b/h/c0/a/g;->e:Ljava/util/concurrent/Future;

    return-void
.end method

.method public static f(Lc/c/b/b;Lc/c/a/a/f/c/z0;)Lc/c/b/h/d0/c0;
    .locals 6

    invoke-static {p0}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lc/c/b/h/d0/z;

    const-string v2, "firebase"

    invoke-direct {v1, p1, v2}, Lc/c/b/h/d0/z;-><init>(Lc/c/a/a/f/c/z0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1
    iget-object v1, p1, Lc/c/a/a/f/c/z0;->g:Lc/c/a/a/f/c/f1;

    .line 2
    iget-object v1, v1, Lc/c/a/a/f/c/f1;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lc/c/b/h/d0/z;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/c/a/a/f/c/d1;

    invoke-direct {v3, v4}, Lc/c/b/h/d0/z;-><init>(Lc/c/a/a/f/c/d1;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lc/c/b/h/d0/c0;

    invoke-direct {v1, p0, v0}, Lc/c/b/h/d0/c0;-><init>(Lc/c/b/b;Ljava/util/List;)V

    new-instance p0, Lc/c/b/h/d0/e0;

    .line 4
    iget-wide v2, p1, Lc/c/a/a/f/c/z0;->k:J

    .line 5
    iget-wide v4, p1, Lc/c/a/a/f/c/z0;->j:J

    .line 6
    invoke-direct {p0, v2, v3, v4, v5}, Lc/c/b/h/d0/e0;-><init>(JJ)V

    .line 7
    iput-object p0, v1, Lc/c/b/h/d0/c0;->j:Lc/c/b/h/d0/e0;

    .line 8
    iget-boolean p0, p1, Lc/c/a/a/f/c/z0;->l:Z

    .line 9
    iput-boolean p0, v1, Lc/c/b/h/d0/c0;->k:Z

    .line 10
    iget-object p0, p1, Lc/c/a/a/f/c/z0;->m:Lc/c/b/h/g0;

    .line 11
    iput-object p0, v1, Lc/c/b/h/d0/c0;->l:Lc/c/b/h/g0;

    .line 12
    iget-object p0, p1, Lc/c/a/a/f/c/z0;->n:Ljava/util/List;

    .line 13
    invoke-static {p0}, Lc/c/a/a/c/l/q;->t0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lc/c/b/h/d0/c0;->l(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public final c()Ljava/util/concurrent/Future;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lc/c/b/h/c0/a/c<",
            "Lc/c/b/h/c0/a/t0;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/b/h/c0/a/g;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc/c/b/h/c0/a/g;->c:Landroid/content/Context;

    iget-object v1, p0, Lc/c/b/h/c0/a/g;->d:Lc/c/b/h/c0/a/t0;

    new-instance v2, Lc/c/b/h/c0/a/j0;

    invoke-direct {v2, v1, v0}, Lc/c/b/h/c0/a/j0;-><init>(Lc/c/b/h/c0/a/t0;Landroid/content/Context;)V

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v10

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v6, 0x3c

    const/4 v5, 0x1

    move-object v3, v0

    move v4, v5

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 2
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lc/c/a/a/h/d;Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/c/a/a/h/d<",
            "TResultT;>;",
            "Lc/c/b/h/c0/a/f<",
            "Lc/c/b/h/c0/a/l0;",
            "TResultT;>;)",
            "Lc/c/a/a/h/d<",
            "TResultT;>;"
        }
    .end annotation

    new-instance v0, Lc/c/b/h/c0/a/h;

    invoke-direct {v0, p0, p2}, Lc/c/b/h/c0/a/h;-><init>(Lc/c/b/h/c0/a/g;Lc/c/b/h/c0/a/f;)V

    check-cast p1, Lc/c/a/a/h/t;

    if-eqz p1, :cond_0

    .line 1
    sget-object p2, Lc/c/a/a/h/f;->a:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v1, Lc/c/a/a/h/t;

    invoke-direct {v1}, Lc/c/a/a/h/t;-><init>()V

    iget-object v2, p1, Lc/c/a/a/h/t;->b:Lc/c/a/a/h/r;

    new-instance v3, Lc/c/a/a/h/g;

    invoke-direct {v3, p2, v0, v1}, Lc/c/a/a/h/g;-><init>(Ljava/util/concurrent/Executor;Lc/c/b/h/c0/a/h;Lc/c/a/a/h/t;)V

    invoke-virtual {v2, v3}, Lc/c/a/a/h/r;->b(Lc/c/a/a/h/q;)V

    invoke-virtual {p1}, Lc/c/a/a/h/t;->e()V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
