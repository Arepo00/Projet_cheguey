.class public final Lc/c/a/a/c/k/k/h0;
.super Lc/c/a/a/c/k/k/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/a/c/k/k/o;"
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/a/c/k/k/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/k/k<",
            "Lc/c/a/a/c/k/a$b;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field public final b:Lc/c/a/a/h/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/h/e<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field public final c:Lc/c/a/a/c/k/k/j;


# direct methods
.method public constructor <init>(ILc/c/a/a/c/k/k/k;Lc/c/a/a/h/e;Lc/c/a/a/c/k/k/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc/c/a/a/c/k/k/k<",
            "Lc/c/a/a/c/k/a$b;",
            "TResultT;>;",
            "Lc/c/a/a/h/e<",
            "TResultT;>;",
            "Lc/c/a/a/c/k/k/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lc/c/a/a/c/k/k/o;-><init>(I)V

    iput-object p3, p0, Lc/c/a/a/c/k/k/h0;->b:Lc/c/a/a/h/e;

    iput-object p2, p0, Lc/c/a/a/c/k/k/h0;->a:Lc/c/a/a/c/k/k/k;

    iput-object p4, p0, Lc/c/a/a/c/k/k/h0;->c:Lc/c/a/a/c/k/k/j;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/c/k/k/h0;->b:Lc/c/a/a/h/e;

    iget-object v1, p0, Lc/c/a/a/c/k/k/h0;->c:Lc/c/a/a/c/k/k/j;

    invoke-interface {v1, p1}, Lc/c/a/a/c/k/k/j;->a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/a/h/e;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final b(Lc/c/a/a/c/k/k/m0;Z)V
    .locals 3

    iget-object v0, p0, Lc/c/a/a/c/k/k/h0;->b:Lc/c/a/a/h/e;

    .line 1
    iget-object v1, p1, Lc/c/a/a/c/k/k/m0;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, v0, Lc/c/a/a/h/e;->a:Lc/c/a/a/h/t;

    .line 3
    new-instance v1, Lc/c/a/a/c/k/k/l;

    invoke-direct {v1, p1, v0}, Lc/c/a/a/c/k/k/l;-><init>(Lc/c/a/a/c/k/k/m0;Lc/c/a/a/h/e;)V

    if-eqz p2, :cond_0

    .line 4
    sget-object p1, Lc/c/a/a/h/f;->a:Ljava/util/concurrent/Executor;

    .line 5
    iget-object v0, p2, Lc/c/a/a/h/t;->b:Lc/c/a/a/h/r;

    new-instance v2, Lc/c/a/a/h/k;

    invoke-direct {v2, p1, v1}, Lc/c/a/a/h/k;-><init>(Ljava/util/concurrent/Executor;Lc/c/a/a/c/k/k/l;)V

    invoke-virtual {v0, v2}, Lc/c/a/a/h/r;->b(Lc/c/a/a/h/q;)V

    invoke-virtual {p2}, Lc/c/a/a/h/t;->e()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final c(Ljava/lang/RuntimeException;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/c/k/k/h0;->b:Lc/c/a/a/h/e;

    invoke-virtual {v0, p1}, Lc/c/a/a/h/e;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final e(Lc/c/a/a/c/k/k/d$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/c/k/k/d$a<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lc/c/a/a/c/k/k/h0;->a:Lc/c/a/a/c/k/k/k;

    .line 1
    iget-object p1, p1, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    .line 2
    iget-object v1, p0, Lc/c/a/a/c/k/k/h0;->b:Lc/c/a/a/h/e;

    check-cast v0, Lc/c/a/a/c/k/k/d0;

    .line 3
    iget-object v0, v0, Lc/c/a/a/c/k/k/d0;->c:Lc/c/a/a/c/k/k/k$a;

    .line 4
    iget-object v0, v0, Lc/c/a/a/c/k/k/k$a;->a:Lc/c/a/a/c/k/k/i;

    .line 5
    invoke-interface {v0, p1, v1}, Lc/c/a/a/c/k/k/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lc/c/a/a/c/k/k/h0;->b:Lc/c/a/a/h/e;

    invoke-virtual {v0, p1}, Lc/c/a/a/h/e;->a(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    .line 7
    invoke-static {p1}, Lc/c/a/a/c/k/k/x;->d(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lc/c/a/a/c/k/k/h0;->b:Lc/c/a/a/h/e;

    iget-object v1, p0, Lc/c/a/a/c/k/k/h0;->c:Lc/c/a/a/c/k/k/j;

    invoke-interface {v1, p1}, Lc/c/a/a/c/k/k/j;->a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/a/h/e;->a(Ljava/lang/Exception;)Z

    return-void

    :catch_2
    move-exception p1

    .line 9
    throw p1
.end method

.method public final f(Lc/c/a/a/c/k/k/d$a;)[Lc/c/a/a/c/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/c/k/k/d$a<",
            "*>;)[",
            "Lc/c/a/a/c/c;"
        }
    .end annotation

    iget-object p1, p0, Lc/c/a/a/c/k/k/h0;->a:Lc/c/a/a/c/k/k/k;

    .line 1
    iget-object p1, p1, Lc/c/a/a/c/k/k/k;->a:[Lc/c/a/a/c/c;

    return-object p1
.end method

.method public final g(Lc/c/a/a/c/k/k/d$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/c/k/k/d$a<",
            "*>;)Z"
        }
    .end annotation

    iget-object p1, p0, Lc/c/a/a/c/k/k/h0;->a:Lc/c/a/a/c/k/k/k;

    .line 1
    iget-boolean p1, p1, Lc/c/a/a/c/k/k/k;->b:Z

    return p1
.end method
