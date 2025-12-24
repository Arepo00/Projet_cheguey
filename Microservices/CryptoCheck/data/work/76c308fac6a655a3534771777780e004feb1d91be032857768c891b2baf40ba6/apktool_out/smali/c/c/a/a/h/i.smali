.class public final Lc/c/a/a/h/i;
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

.field public c:Lc/c/a/a/h/g;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lc/c/a/a/h/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/c/a/a/h/i;->b:Ljava/lang/Object;

    iput-object p1, p0, Lc/c/a/a/h/i;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lc/c/a/a/h/i;->c:Lc/c/a/a/h/g;

    return-void
.end method


# virtual methods
.method public final a(Lc/c/a/a/h/d;)V
    .locals 1

    check-cast p1, Lc/c/a/a/h/t;

    .line 1
    iget-boolean p1, p1, Lc/c/a/a/h/t;->d:Z

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lc/c/a/a/h/i;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lc/c/a/a/h/i;->c:Lc/c/a/a/h/g;

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lc/c/a/a/h/i;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lc/c/a/a/h/j;

    invoke-direct {v0, p0}, Lc/c/a/a/h/j;-><init>(Lc/c/a/a/h/i;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
