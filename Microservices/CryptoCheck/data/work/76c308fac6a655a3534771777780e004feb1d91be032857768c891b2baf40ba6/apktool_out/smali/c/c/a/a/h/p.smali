.class public final Lc/c/a/a/h/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc/c/a/a/h/d;

.field public final synthetic c:Lc/c/a/a/h/o;


# direct methods
.method public constructor <init>(Lc/c/a/a/h/o;Lc/c/a/a/h/d;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/h/p;->c:Lc/c/a/a/h/o;

    iput-object p2, p0, Lc/c/a/a/h/p;->b:Lc/c/a/a/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc/c/a/a/h/p;->c:Lc/c/a/a/h/o;

    .line 1
    iget-object v0, v0, Lc/c/a/a/h/o;->b:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/c/a/a/h/p;->c:Lc/c/a/a/h/o;

    .line 3
    iget-object v1, v1, Lc/c/a/a/h/o;->c:Lc/c/a/a/h/b;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lc/c/a/a/h/p;->c:Lc/c/a/a/h/o;

    .line 5
    iget-object v1, v1, Lc/c/a/a/h/o;->c:Lc/c/a/a/h/b;

    .line 6
    iget-object v2, p0, Lc/c/a/a/h/p;->b:Lc/c/a/a/h/d;

    invoke-virtual {v2}, Lc/c/a/a/h/d;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v1, Lc/c/a/a/h/g;

    .line 7
    iget-object v1, v1, Lc/c/a/a/h/g;->c:Lc/c/a/a/h/t;

    invoke-virtual {v1, v2}, Lc/c/a/a/h/t;->d(Ljava/lang/Object;)V

    .line 8
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
