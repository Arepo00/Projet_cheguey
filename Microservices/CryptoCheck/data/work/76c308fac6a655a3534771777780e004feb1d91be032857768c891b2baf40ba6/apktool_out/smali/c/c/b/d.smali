.class public Lc/c/b/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/a/c/k/k/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;
    .locals 2

    .line 1
    iget v0, p1, Lcom/google/android/gms/common/api/Status;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lc/c/b/c;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/c/b/c;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lc/c/b/a;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/c/b/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
