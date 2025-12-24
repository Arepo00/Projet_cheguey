.class public final Lc/c/b/h/c0/a/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/b/h/c0/a/h<",
        "TResultT;",
        "Lc/c/a/a/h/d<",
        "TResultT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/b/h/c0/a/f;

.field public final synthetic b:Lc/c/b/h/c0/a/g;


# direct methods
.method public constructor <init>(Lc/c/b/h/c0/a/g;Lc/c/b/h/c0/a/f;)V
    .locals 0

    iput-object p1, p0, Lc/c/b/h/c0/a/h;->b:Lc/c/b/h/c0/a/g;

    iput-object p2, p0, Lc/c/b/h/c0/a/h;->a:Lc/c/b/h/c0/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/c/a/a/h/d;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Lc/c/a/a/h/t;

    .line 1
    iget-object v1, v0, Lc/c/a/a/h/t;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lc/c/a/a/h/t;->f:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    instance-of v0, v0, Lc/c/a/a/c/k/j;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lc/c/b/h/c0/a/h;->b:Lc/c/b/h/c0/a/g;

    iget-object v0, p0, Lc/c/b/h/c0/a/h;->a:Lc/c/b/h/c0/a/f;

    check-cast v0, Lc/c/b/h/c0/a/u0;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lc/c/b/h/c0/a/u0;->t:Z

    .line 4
    invoke-virtual {p1, v0}, Lc/c/b/h/c0/a/a;->b(Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    move-result-object p1

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
