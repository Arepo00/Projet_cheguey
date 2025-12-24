.class public Lc/c/b/k/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/k/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const-class v0, Lc/c/b/k/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/c/b/k/d;->a:Lc/c/b/k/d;

    if-nez v1, :cond_0

    new-instance v1, Lc/c/b/k/d;

    invoke-direct {v1, p1}, Lc/c/b/k/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lc/c/b/k/d;->a:Lc/c/b/k/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
