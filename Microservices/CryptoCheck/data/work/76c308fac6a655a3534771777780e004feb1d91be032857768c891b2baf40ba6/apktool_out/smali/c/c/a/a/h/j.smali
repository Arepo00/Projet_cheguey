.class public final Lc/c/a/a/h/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc/c/a/a/h/i;


# direct methods
.method public constructor <init>(Lc/c/a/a/h/i;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/h/j;->b:Lc/c/a/a/h/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lc/c/a/a/h/j;->b:Lc/c/a/a/h/i;

    .line 1
    iget-object v0, v0, Lc/c/a/a/h/i;->b:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/c/a/a/h/j;->b:Lc/c/a/a/h/i;

    .line 3
    iget-object v1, v1, Lc/c/a/a/h/i;->c:Lc/c/a/a/h/g;

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lc/c/a/a/h/j;->b:Lc/c/a/a/h/i;

    .line 5
    iget-object v1, v1, Lc/c/a/a/h/i;->c:Lc/c/a/a/h/g;

    .line 6
    iget-object v1, v1, Lc/c/a/a/h/g;->c:Lc/c/a/a/h/t;

    .line 7
    iget-object v2, v1, Lc/c/a/a/h/t;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v3, v1, Lc/c/a/a/h/t;->c:Z

    if-eqz v3, :cond_0

    monitor-exit v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, v1, Lc/c/a/a/h/t;->c:Z

    iput-boolean v3, v1, Lc/c/a/a/h/t;->d:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, v1, Lc/c/a/a/h/t;->b:Lc/c/a/a/h/r;

    invoke-virtual {v2, v1}, Lc/c/a/a/h/r;->a(Lc/c/a/a/h/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 8
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
