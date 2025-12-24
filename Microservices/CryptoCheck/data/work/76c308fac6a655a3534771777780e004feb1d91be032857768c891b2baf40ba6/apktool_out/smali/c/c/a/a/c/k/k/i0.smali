.class public final Lc/c/a/a/c/k/k/i0;
.super Lc/c/a/a/c/k/k/g0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/a/c/k/k/g0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lc/c/a/a/c/k/k/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/k/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/c/a/a/c/k/k/g;Lc/c/a/a/h/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/c/k/k/g<",
            "*>;",
            "Lc/c/a/a/h/e<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lc/c/a/a/c/k/k/g0;-><init>(ILc/c/a/a/h/e;)V

    iput-object p1, p0, Lc/c/a/a/c/k/k/i0;->b:Lc/c/a/a/c/k/k/g;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lc/c/a/a/c/k/k/m0;Z)V
    .locals 0

    return-void
.end method

.method public final f(Lc/c/a/a/c/k/k/d$a;)[Lc/c/a/a/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/c/k/k/d$a<",
            "*>;)[",
            "Lc/c/a/a/c/c;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lc/c/a/a/c/k/k/d$a;->g:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lc/c/a/a/c/k/k/i0;->b:Lc/c/a/a/c/k/k/g;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/a/c/k/k/w;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    throw v0
.end method

.method public final g(Lc/c/a/a/c/k/k/d$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/c/k/k/d$a<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lc/c/a/a/c/k/k/d$a;->g:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lc/c/a/a/c/k/k/i0;->b:Lc/c/a/a/c/k/k/g;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/a/c/k/k/w;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final h(Lc/c/a/a/c/k/k/d$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/c/k/k/d$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lc/c/a/a/c/k/k/d$a;->g:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lc/c/a/a/c/k/k/i0;->b:Lc/c/a/a/c/k/k/g;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/a/c/k/k/w;

    if-nez p1, :cond_1

    iget-object p1, p0, Lc/c/a/a/c/k/k/g0;->a:Lc/c/a/a/h/e;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    iget-object p1, p1, Lc/c/a/a/h/e;->a:Lc/c/a/a/h/t;

    .line 4
    iget-object v1, p1, Lc/c/a/a/h/t;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p1, Lc/c/a/a/h/t;->c:Z

    if-eqz v2, :cond_0

    monitor-exit v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p1, Lc/c/a/a/h/t;->c:Z

    iput-object v0, p1, Lc/c/a/a/h/t;->e:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p1, Lc/c/a/a/h/t;->b:Lc/c/a/a/h/r;

    invoke-virtual {v0, p1}, Lc/c/a/a/h/r;->a(Lc/c/a/a/h/d;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
