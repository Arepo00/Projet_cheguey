.class public abstract Lc/c/a/a/g/b/g;
.super Lc/c/a/a/f/a/a;
.source ""

# interfaces
.implements Lc/c/a/a/g/b/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInCallbacks"

    invoke-direct {p0, v0}, Lc/c/a/a/f/a/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public C(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const/4 p4, 0x3

    if-eq p1, p4, :cond_3

    const/4 p4, 0x4

    if-eq p1, p4, :cond_2

    const/4 p4, 0x6

    if-eq p1, p4, :cond_2

    const/4 p4, 0x7

    if-eq p1, p4, :cond_1

    const/16 p4, 0x8

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p1, Lc/c/a/a/g/b/l;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/c/a/a/f/a/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/c/a/a/g/b/l;

    move-object p2, p0

    check-cast p2, Lc/c/a/a/c/k/k/z;

    .line 1
    iget-object p4, p2, Lc/c/a/a/c/k/k/z;->b:Landroid/os/Handler;

    new-instance v0, Lc/c/a/a/c/k/k/b0;

    invoke-direct {v0, p2, p1}, Lc/c/a/a/c/k/k/b0;-><init>(Lc/c/a/a/c/k/k/z;Lc/c/a/a/g/b/l;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/c/a/a/f/a/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/c/a/a/f/a/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/c/a/a/f/a/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_3
    sget-object p1, Lc/c/a/a/c/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/c/a/a/f/a/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/c/a/a/c/a;

    sget-object p1, Lc/c/a/a/g/b/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/c/a/a/f/a/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/c/a/a/g/b/c;

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method
