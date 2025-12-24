.class public final Lc/c/b/h/c0/a/n;
.super Lc/c/b/h/c0/a/u0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b/h/c0/a/u0<",
        "Ljava/lang/Object;",
        "Lc/c/b/h/d0/r;",
        ">;"
    }
.end annotation


# instance fields
.field public final w:Lc/c/b/h/w;


# direct methods
.method public constructor <init>(Lc/c/b/h/w;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lc/c/b/h/c0/a/u0;-><init>(I)V

    const-string v0, "credential cannot be null"

    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lc/c/b/h/c0/a/n;->w:Lc/c/b/h/w;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "linkPhoneAuthCredential"

    return-object v0
.end method

.method public final b()Lc/c/a/a/c/k/k/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/a/c/k/k/k<",
            "Lc/c/b/h/c0/a/l0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lc/c/a/a/c/k/k/k;->a()Lc/c/a/a/c/k/k/k$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lc/c/a/a/c/k/k/k$a;->b:Z

    .line 2
    iget-boolean v2, p0, Lc/c/b/h/c0/a/u0;->t:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lc/c/b/h/c0/a/u0;->u:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Lc/c/a/a/c/c;

    sget-object v3, Lc/c/a/a/f/c/r0;->b:Lc/c/a/a/c/c;

    aput-object v3, v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 3
    :goto_1
    iput-object v2, v0, Lc/c/a/a/c/k/k/k$a;->c:[Lc/c/a/a/c/c;

    .line 4
    new-instance v1, Lc/c/b/h/c0/a/q;

    invoke-direct {v1, p0}, Lc/c/b/h/c0/a/q;-><init>(Lc/c/b/h/c0/a/n;)V

    .line 5
    iput-object v1, v0, Lc/c/a/a/c/k/k/k$a;->a:Lc/c/a/a/c/k/k/i;

    .line 6
    invoke-virtual {v0}, Lc/c/a/a/c/k/k/k$a;->a()Lc/c/a/a/c/k/k/k;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lc/c/b/h/c0/a/u0;->c:Lc/c/b/b;

    iget-object v1, p0, Lc/c/b/h/c0/a/u0;->k:Lc/c/a/a/f/c/z0;

    invoke-static {v0, v1}, Lc/c/b/h/c0/a/g;->f(Lc/c/b/b;Lc/c/a/a/f/c/z0;)Lc/c/b/h/d0/c0;

    move-result-object v0

    iget-object v1, p0, Lc/c/b/h/c0/a/u0;->e:Ljava/lang/Object;

    check-cast v1, Lc/c/b/h/d0/r;

    iget-object v2, p0, Lc/c/b/h/c0/a/u0;->j:Lc/c/a/a/f/c/a1;

    invoke-interface {v1, v2, v0}, Lc/c/b/h/d0/r;->a(Lc/c/a/a/f/c/a1;Lc/c/b/h/o;)V

    new-instance v1, Lc/c/b/h/d0/x;

    invoke-direct {v1, v0}, Lc/c/b/h/d0/x;-><init>(Lc/c/b/h/d0/c0;)V

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/c/b/h/c0/a/u0;->v:Z

    iget-object v0, p0, Lc/c/b/h/c0/a/u0;->g:Lc/c/b/h/c0/a/b1;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lc/c/b/h/c0/a/b1;->a(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
