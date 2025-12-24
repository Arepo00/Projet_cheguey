.class public final Lc/c/b/h/c0/a/q0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/h/c0/a/p0;
.implements Landroid/os/IInterface;


# instance fields
.field public final a:Landroid/os/IBinder;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/b/h/c0/a/q0;->a:Landroid/os/IBinder;

    const-string p1, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    iput-object p1, p0, Lc/c/b/h/c0/a/q0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;Lc/c/b/h/c0/a/n0;)V
    .locals 1

    invoke-virtual {p0}, Lc/c/b/h/c0/a/q0;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Lc/c/a/a/f/c/i0;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v0}, Lc/c/b/h/c0/a/q0;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final B(Lc/c/a/a/f/c/d0;Lc/c/b/h/c0/a/n0;)V
    .locals 1

    invoke-virtual {p0}, Lc/c/b/h/c0/a/q0;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/c/a/a/f/c/i0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lc/c/a/a/f/c/i0;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x6f

    invoke-virtual {p0, p1, v0}, Lc/c/b/h/c0/a/q0;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/b/h/c0/a/q0;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final c()Landroid/os/Parcel;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lc/c/b/h/c0/a/q0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method

.method public final e(Lc/c/a/a/f/c/h0;Lc/c/b/h/c0/a/n0;)V
    .locals 1

    invoke-virtual {p0}, Lc/c/b/h/c0/a/q0;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/c/a/a/f/c/i0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lc/c/a/a/f/c/i0;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x7c

    invoke-virtual {p0, p1, v0}, Lc/c/b/h/c0/a/q0;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final h(Ljava/lang/String;Lc/c/b/h/w;Lc/c/b/h/c0/a/n0;)V
    .locals 1

    invoke-virtual {p0}, Lc/c/b/h/c0/a/q0;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lc/c/a/a/f/c/i0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lc/c/a/a/f/c/i0;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x18

    invoke-virtual {p0, p1, v0}, Lc/c/b/h/c0/a/q0;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final i(Lc/c/a/a/f/c/f0;Lc/c/b/h/c0/a/n0;)V
    .locals 1

    invoke-virtual {p0}, Lc/c/b/h/c0/a/q0;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/c/a/a/f/c/i0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lc/c/a/a/f/c/i0;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x70

    invoke-virtual {p0, p1, v0}, Lc/c/b/h/c0/a/q0;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final j(Lc/c/a/a/f/c/b0;Lc/c/b/h/c0/a/n0;)V
    .locals 1

    invoke-virtual {p0}, Lc/c/b/h/c0/a/q0;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/c/a/a/f/c/i0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lc/c/a/a/f/c/i0;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x65

    invoke-virtual {p0, p1, v0}, Lc/c/b/h/c0/a/q0;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final k(Ljava/lang/String;Lc/c/a/a/f/c/n1;Lc/c/b/h/c0/a/n0;)V
    .locals 1

    invoke-virtual {p0}, Lc/c/b/h/c0/a/q0;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lc/c/a/a/f/c/i0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lc/c/a/a/f/c/i0;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Lc/c/b/h/c0/a/q0;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final l(Lc/c/b/h/w;Lc/c/b/h/c0/a/n0;)V
    .locals 1

    invoke-virtual {p0}, Lc/c/b/h/c0/a/q0;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/c/a/a/f/c/i0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lc/c/a/a/f/c/i0;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x17

    invoke-virtual {p0, p1, v0}, Lc/c/b/h/c0/a/q0;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final n(Ljava/lang/String;Lc/c/b/h/c0/a/n0;)V
    .locals 1

    invoke-virtual {p0}, Lc/c/b/h/c0/a/q0;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lc/c/a/a/f/c/i0;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lc/c/b/h/c0/a/q0;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final o(Lc/c/a/a/f/c/m0;Lc/c/b/h/c0/a/n0;)V
    .locals 1

    invoke-virtual {p0}, Lc/c/b/h/c0/a/q0;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/c/a/a/f/c/i0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lc/c/a/a/f/c/i0;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x6c

    invoke-virtual {p0, p1, v0}, Lc/c/b/h/c0/a/q0;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final p(Lc/c/b/h/c;Lc/c/b/h/c0/a/n0;)V
    .locals 1

    invoke-virtual {p0}, Lc/c/b/h/c0/a/q0;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/c/a/a/f/c/i0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lc/c/a/a/f/c/i0;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x1d

    invoke-virtual {p0, p1, v0}, Lc/c/b/h/c0/a/q0;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final r(Lc/c/a/a/f/c/q0;Lc/c/b/h/c0/a/n0;)V
    .locals 1

    invoke-virtual {p0}, Lc/c/b/h/c0/a/q0;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/c/a/a/f/c/i0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lc/c/a/a/f/c/i0;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x7b

    invoke-virtual {p0, p1, v0}, Lc/c/b/h/c0/a/q0;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final s(Lc/c/a/a/f/c/n1;Lc/c/b/h/c0/a/n0;)V
    .locals 1

    invoke-virtual {p0}, Lc/c/b/h/c0/a/q0;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/c/a/a/f/c/i0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lc/c/a/a/f/c/i0;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lc/c/b/h/c0/a/q0;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final t(ILandroid/os/Parcel;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lc/c/b/h/c0/a/q0;->a:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public final u(Lc/c/a/a/f/c/o0;Lc/c/b/h/c0/a/n0;)V
    .locals 1

    invoke-virtual {p0}, Lc/c/b/h/c0/a/q0;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/c/a/a/f/c/i0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lc/c/a/a/f/c/i0;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x81

    invoke-virtual {p0, p1, v0}, Lc/c/b/h/c0/a/q0;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/c/b/h/c0/a/n0;)V
    .locals 1

    invoke-virtual {p0}, Lc/c/b/h/c0/a/q0;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p4}, Lc/c/a/a/f/c/i0;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Lc/c/b/h/c0/a/q0;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final x(Lc/c/a/a/f/c/k0;Lc/c/b/h/c0/a/n0;)V
    .locals 1

    invoke-virtual {p0}, Lc/c/b/h/c0/a/q0;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/c/a/a/f/c/i0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lc/c/a/a/f/c/i0;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x67

    invoke-virtual {p0, p1, v0}, Lc/c/b/h/c0/a/q0;->t(ILandroid/os/Parcel;)V

    return-void
.end method
