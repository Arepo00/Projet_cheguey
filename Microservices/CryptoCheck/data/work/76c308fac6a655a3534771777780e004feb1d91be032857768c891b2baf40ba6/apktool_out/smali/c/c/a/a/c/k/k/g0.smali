.class public abstract Lc/c/a/a/c/k/k/g0;
.super Lc/c/a/a/c/k/k/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/a/c/k/k/o;"
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/a/h/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/h/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILc/c/a/a/h/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc/c/a/a/h/e<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lc/c/a/a/c/k/k/o;-><init>(I)V

    iput-object p2, p0, Lc/c/a/a/c/k/k/g0;->a:Lc/c/a/a/h/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/c/k/k/g0;->a:Lc/c/a/a/h/e;

    new-instance v1, Lc/c/a/a/c/k/b;

    invoke-direct {v1, p1}, Lc/c/a/a/c/k/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lc/c/a/a/h/e;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method public c(Ljava/lang/RuntimeException;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/c/k/k/g0;->a:Lc/c/a/a/h/e;

    invoke-virtual {v0, p1}, Lc/c/a/a/h/e;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final e(Lc/c/a/a/c/k/k/d$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/c/k/k/d$a<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lc/c/a/a/c/k/k/g0;->h(Lc/c/a/a/c/k/k/d$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    iget-object v0, p0, Lc/c/a/a/c/k/k/g0;->a:Lc/c/a/a/h/e;

    invoke-virtual {v0, p1}, Lc/c/a/a/h/e;->a(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    .line 2
    invoke-static {p1}, Lc/c/a/a/c/k/k/x;->d(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lc/c/a/a/c/k/k/g0;->a:Lc/c/a/a/h/e;

    new-instance v1, Lc/c/a/a/c/k/b;

    invoke-direct {v1, p1}, Lc/c/a/a/c/k/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lc/c/a/a/h/e;->a(Ljava/lang/Exception;)Z

    return-void

    :catch_2
    move-exception p1

    .line 4
    invoke-static {p1}, Lc/c/a/a/c/k/k/x;->d(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lc/c/a/a/c/k/k/g0;->a:Lc/c/a/a/h/e;

    new-instance v2, Lc/c/a/a/c/k/b;

    invoke-direct {v2, v0}, Lc/c/a/a/c/k/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lc/c/a/a/h/e;->a(Ljava/lang/Exception;)Z

    .line 6
    throw p1
.end method

.method public abstract h(Lc/c/a/a/c/k/k/d$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/c/k/k/d$a<",
            "*>;)V"
        }
    .end annotation
.end method
