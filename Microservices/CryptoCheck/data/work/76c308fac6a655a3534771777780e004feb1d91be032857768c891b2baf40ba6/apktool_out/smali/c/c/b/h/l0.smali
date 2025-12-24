.class public final Lc/c/b/h/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/h/d0/f;
.implements Lc/c/b/h/d0/r;


# instance fields
.field public final synthetic a:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    iput-object p1, p0, Lc/c/b/h/l0;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/c/a/a/f/c/a1;Lc/c/b/h/o;)V
    .locals 2

    iget-object v0, p0, Lc/c/b/h/l0;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->b(Lc/c/b/h/o;Lc/c/a/a/f/c/a1;ZZ)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->c:I

    const/16 v0, 0x4273

    if-eq p1, v0, :cond_0

    const/16 v0, 0x427d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x426d

    if-ne p1, v0, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lc/c/b/h/l0;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->a()V

    :cond_1
    return-void
.end method
