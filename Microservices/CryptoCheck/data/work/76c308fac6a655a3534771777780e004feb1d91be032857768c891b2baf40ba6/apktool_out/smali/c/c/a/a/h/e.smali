.class public Lc/c/a/a/h/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/a/h/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/h/t<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/c/a/a/h/t;

    invoke-direct {v0}, Lc/c/a/a/h/t;-><init>()V

    iput-object v0, p0, Lc/c/a/a/h/e;->a:Lc/c/a/a/h/t;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)Z
    .locals 3

    iget-object v0, p0, Lc/c/a/a/h/e;->a:Lc/c/a/a/h/t;

    if-eqz v0, :cond_1

    const-string v1, "Exception must not be null"

    .line 1
    invoke-static {p1, v1}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lc/c/a/a/h/t;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lc/c/a/a/h/t;->c:Z

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    monitor-exit v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lc/c/a/a/h/t;->c:Z

    iput-object p1, v0, Lc/c/a/a/h/t;->f:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lc/c/a/a/h/t;->b:Lc/c/a/a/h/r;

    invoke-virtual {p1, v0}, Lc/c/a/a/h/r;->a(Lc/c/a/a/h/d;)V

    const/4 p1, 0x1

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method
