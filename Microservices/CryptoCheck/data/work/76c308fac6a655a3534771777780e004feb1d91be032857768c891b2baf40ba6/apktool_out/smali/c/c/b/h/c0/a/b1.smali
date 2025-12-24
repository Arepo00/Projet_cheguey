.class public final Lc/c/b/h/c0/a/b1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/c/b/h/c0/a/b1<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/c/b/h/c0/a/u0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/b/h/c0/a/u0<",
            "TResultT;TCallbackT;>;"
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


# direct methods
.method public constructor <init>(Lc/c/b/h/c0/a/u0;Lc/c/a/a/h/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/b/h/c0/a/u0<",
            "TResultT;TCallbackT;>;",
            "Lc/c/a/a/h/e<",
            "TResultT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/b/h/c0/a/b1;->a:Lc/c/b/h/c0/a/u0;

    iput-object p2, p0, Lc/c/b/h/c0/a/b1;->b:Lc/c/a/a/h/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;",
            "Lcom/google/android/gms/common/api/Status;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lc/c/b/h/c0/a/b1;->b:Lc/c/a/a/h/e;

    const-string v1, "completion source cannot be null"

    invoke-static {v0, v1}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    iget-object p1, p0, Lc/c/b/h/c0/a/b1;->a:Lc/c/b/h/c0/a/u0;

    iget-object v0, p1, Lc/c/b/h/c0/a/u0;->s:Lc/c/a/a/f/c/v0;

    if-eqz v0, :cond_2

    iget-object p2, p0, Lc/c/b/h/c0/a/b1;->b:Lc/c/a/a/h/e;

    iget-object p1, p1, Lc/c/b/h/c0/a/u0;->c:Lc/c/b/b;

    invoke-static {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lc/c/b/b;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iget-object v0, p0, Lc/c/b/h/c0/a/b1;->a:Lc/c/b/h/c0/a/u0;

    iget-object v1, v0, Lc/c/b/h/c0/a/u0;->s:Lc/c/a/a/f/c/v0;

    invoke-interface {v0}, Lc/c/b/h/c0/a/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "reauthenticateWithCredential"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/c/b/h/c0/a/b1;->a:Lc/c/b/h/c0/a/u0;

    invoke-interface {v0}, Lc/c/b/h/c0/a/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "reauthenticateWithCredentialWithData"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lc/c/b/h/c0/a/b1;->a:Lc/c/b/h/c0/a/u0;

    iget-object v0, v0, Lc/c/b/h/c0/a/u0;->d:Lc/c/b/h/o;

    :goto_1
    invoke-static {p1, v1, v0}, Lc/c/b/h/c0/a/m0;->c(Lcom/google/firebase/auth/FirebaseAuth;Lc/c/a/a/f/c/v0;Lc/c/b/h/o;)Lc/c/b/h/j;

    move-result-object p1

    .line 1
    iget-object p2, p2, Lc/c/a/a/h/e;->a:Lc/c/a/a/h/t;

    invoke-virtual {p2, p1}, Lc/c/a/a/h/t;->c(Ljava/lang/Exception;)V

    return-void

    .line 2
    :cond_2
    iget-object v0, p1, Lc/c/b/h/c0/a/u0;->p:Lc/c/b/h/b;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lc/c/b/h/c0/a/b1;->b:Lc/c/a/a/h/e;

    iget-object v2, p1, Lc/c/b/h/c0/a/u0;->q:Ljava/lang/String;

    iget-object p1, p1, Lc/c/b/h/c0/a/u0;->r:Ljava/lang/String;

    invoke-static {p2, v0, v2, p1}, Lc/c/b/h/c0/a/m0;->b(Lcom/google/android/gms/common/api/Status;Lc/c/b/h/b;Ljava/lang/String;Ljava/lang/String;)Lc/c/b/c;

    move-result-object p1

    .line 3
    iget-object p2, v1, Lc/c/a/a/h/e;->a:Lc/c/a/a/h/t;

    invoke-virtual {p2, p1}, Lc/c/a/a/h/t;->c(Ljava/lang/Exception;)V

    return-void

    .line 4
    :cond_3
    iget-object p1, p0, Lc/c/b/h/c0/a/b1;->b:Lc/c/a/a/h/e;

    invoke-static {p2}, Lc/c/b/h/c0/a/m0;->a(Lcom/google/android/gms/common/api/Status;)Lc/c/b/c;

    move-result-object p2

    .line 5
    iget-object p1, p1, Lc/c/a/a/h/e;->a:Lc/c/a/a/h/t;

    invoke-virtual {p1, p2}, Lc/c/a/a/h/t;->c(Ljava/lang/Exception;)V

    return-void

    .line 6
    :cond_4
    iget-object p2, p0, Lc/c/b/h/c0/a/b1;->b:Lc/c/a/a/h/e;

    .line 7
    iget-object p2, p2, Lc/c/a/a/h/e;->a:Lc/c/a/a/h/t;

    invoke-virtual {p2, p1}, Lc/c/a/a/h/t;->d(Ljava/lang/Object;)V

    return-void
.end method
