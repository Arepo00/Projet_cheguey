.class public Lcom/google/firebase/auth/FirebaseAuth$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/h/d0/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/FirebaseAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth$c;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/c/a/a/f/c/a1;Lc/c/b/h/o;)V
    .locals 3

    invoke-static {p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lc/c/b/h/o;->k(Lc/c/a/a/f/c/a1;)V

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth$c;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/google/firebase/auth/FirebaseAuth;->b(Lc/c/b/h/o;Lc/c/a/a/f/c/a1;ZZ)V

    return-void
.end method
