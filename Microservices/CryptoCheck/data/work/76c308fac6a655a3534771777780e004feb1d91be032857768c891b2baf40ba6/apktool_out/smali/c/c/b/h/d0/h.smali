.class public final Lc/c/b/h/d0/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/firebase/auth/internal/FederatedSignInActivity;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/internal/FederatedSignInActivity;)V
    .locals 0

    iput-object p1, p0, Lc/c/b/h/d0/h;->b:Lcom/google/firebase/auth/internal/FederatedSignInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lc/c/b/h/d0/h;->b:Lcom/google/firebase/auth/internal/FederatedSignInActivity;

    invoke-static {v0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->s(Lcom/google/firebase/auth/internal/FederatedSignInActivity;)V

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->r:Ljava/lang/Runnable;

    return-void
.end method
