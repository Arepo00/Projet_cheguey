.class public final Lc/c/a/a/h/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc/c/a/a/h/d;

.field public final synthetic c:Lc/c/a/a/h/k;


# direct methods
.method public constructor <init>(Lc/c/a/a/h/k;Lc/c/a/a/h/d;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/h/l;->c:Lc/c/a/a/h/k;

    iput-object p2, p0, Lc/c/a/a/h/l;->b:Lc/c/a/a/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc/c/a/a/h/l;->c:Lc/c/a/a/h/k;

    .line 1
    iget-object v0, v0, Lc/c/a/a/h/k;->b:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/c/a/a/h/l;->c:Lc/c/a/a/h/k;

    .line 3
    iget-object v1, v1, Lc/c/a/a/h/k;->c:Lc/c/a/a/c/k/k/l;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lc/c/a/a/h/l;->c:Lc/c/a/a/h/k;

    .line 5
    iget-object v1, v1, Lc/c/a/a/h/k;->c:Lc/c/a/a/c/k/k/l;

    .line 6
    iget-object v2, v1, Lc/c/a/a/c/k/k/l;->b:Lc/c/a/a/c/k/k/m0;

    .line 7
    iget-object v2, v2, Lc/c/a/a/c/k/k/m0;->b:Ljava/util/Map;

    .line 8
    iget-object v1, v1, Lc/c/a/a/c/k/k/l;->a:Lc/c/a/a/h/e;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
