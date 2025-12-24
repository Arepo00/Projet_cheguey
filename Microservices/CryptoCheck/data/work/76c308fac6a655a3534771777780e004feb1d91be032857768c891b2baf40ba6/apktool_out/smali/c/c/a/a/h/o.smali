.class public final Lc/c/a/a/h/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/a/h/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/c/a/a/h/q<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/Object;

.field public c:Lc/c/a/a/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/h/b<",
            "-TTResult;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lc/c/a/a/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lc/c/a/a/h/b<",
            "-TTResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/c/a/a/h/o;->b:Ljava/lang/Object;

    iput-object p1, p0, Lc/c/a/a/h/o;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lc/c/a/a/h/o;->c:Lc/c/a/a/h/b;

    return-void
.end method


# virtual methods
.method public final a(Lc/c/a/a/h/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/h/d<",
            "TTResult;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lc/c/a/a/h/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/c/a/a/h/o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/c/a/a/h/o;->c:Lc/c/a/a/h/b;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lc/c/a/a/h/o;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lc/c/a/a/h/p;

    invoke-direct {v1, p0, p1}, Lc/c/a/a/h/p;-><init>(Lc/c/a/a/h/o;Lc/c/a/a/h/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
