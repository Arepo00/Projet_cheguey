.class public final Lc/c/a/a/h/t;
.super Lc/c/a/a/h/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/a/h/d<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lc/c/a/a/h/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/h/r<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field public c:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field public volatile d:Z

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field public f:Ljava/lang/Exception;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/c/a/a/h/d;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/c/a/a/h/t;->a:Ljava/lang/Object;

    new-instance v0, Lc/c/a/a/h/r;

    invoke-direct {v0}, Lc/c/a/a/h/r;-><init>()V

    iput-object v0, p0, Lc/c/a/a/h/t;->b:Lc/c/a/a/h/r;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/a/h/t;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lc/c/a/a/h/t;->c:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v1, v2}, Lc/c/a/a/c/l/q;->i(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v1, p0, Lc/c/a/a/h/t;->d:Z

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lc/c/a/a/h/t;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object v1, p0, Lc/c/a/a/h/t;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lc/c/a/a/h/c;

    iget-object v2, p0, Lc/c/a/a/h/t;->f:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Lc/c/a/a/h/c;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 4
    :cond_1
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Task is already canceled."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lc/c/a/a/h/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lc/c/a/a/h/t;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lc/c/a/a/h/t;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lc/c/a/a/h/t;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/c/a/a/h/t;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lc/c/a/a/h/t;->c:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Task is already complete"

    invoke-static {v1, v3}, Lc/c/a/a/c/l/q;->i(ZLjava/lang/Object;)V

    .line 2
    iput-boolean v2, p0, Lc/c/a/a/h/t;->c:Z

    iput-object p1, p0, Lc/c/a/a/h/t;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lc/c/a/a/h/t;->b:Lc/c/a/a/h/r;

    invoke-virtual {p1, p0}, Lc/c/a/a/h/r;->a(Lc/c/a/a/h/d;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/a/h/t;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lc/c/a/a/h/t;->c:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Task is already complete"

    invoke-static {v1, v3}, Lc/c/a/a/c/l/q;->i(ZLjava/lang/Object;)V

    .line 2
    iput-boolean v2, p0, Lc/c/a/a/h/t;->c:Z

    iput-object p1, p0, Lc/c/a/a/h/t;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lc/c/a/a/h/t;->b:Lc/c/a/a/h/r;

    invoke-virtual {p1, p0}, Lc/c/a/a/h/r;->a(Lc/c/a/a/h/d;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/h/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lc/c/a/a/h/t;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lc/c/a/a/h/t;->b:Lc/c/a/a/h/r;

    invoke-virtual {v0, p0}, Lc/c/a/a/h/r;->a(Lc/c/a/a/h/d;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
