.class public Lc/a/b/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/b/p$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/a/b/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lc/a/b/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lc/a/b/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:Lc/a/b/b;

.field public final f:Lc/a/b/i;

.field public final g:Lc/a/b/r;

.field public final h:[Lc/a/b/j;

.field public i:Lc/a/b/d;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/a/b/p$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/a/b/b;Lc/a/b/i;)V
    .locals 3

    .line 1
    new-instance v0, Lc/a/b/g;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lc/a/b/g;-><init>(Landroid/os/Handler;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lc/a/b/p;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lc/a/b/p;->b:Ljava/util/Set;

    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v1, p0, Lc/a/b/p;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v1, p0, Lc/a/b/p;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc/a/b/p;->j:Ljava/util/List;

    iput-object p1, p0, Lc/a/b/p;->e:Lc/a/b/b;

    iput-object p2, p0, Lc/a/b/p;->f:Lc/a/b/i;

    const/4 p1, 0x4

    new-array p1, p1, [Lc/a/b/j;

    iput-object p1, p0, Lc/a/b/p;->h:[Lc/a/b/j;

    iput-object v0, p0, Lc/a/b/p;->g:Lc/a/b/r;

    return-void
.end method


# virtual methods
.method public a(Lc/a/b/o;)Lc/a/b/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a/b/o<",
            "TT;>;)",
            "Lc/a/b/o<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p0, p1, Lc/a/b/o;->i:Lc/a/b/p;

    .line 2
    iget-object v0, p0, Lc/a/b/p;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/a/b/p;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lc/a/b/p;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lc/a/b/o;->h:Ljava/lang/Integer;

    const-string v0, "add-to-queue"

    .line 5
    invoke-virtual {p1, v0}, Lc/a/b/o;->a(Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p1, Lc/a/b/o;->j:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lc/a/b/p;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/a/b/p;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
