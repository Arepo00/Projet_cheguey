.class public final Lc/c/a/a/e/d;
.super Lc/c/a/a/f/b/a;
.source ""

# interfaces
.implements Lc/c/a/a/e/c;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoader"

    invoke-direct {p0, p1, v0}, Lc/c/a/a/f/b/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final d(Lc/c/a/a/d/a;Ljava/lang/String;Z)I
    .locals 1

    invoke-virtual {p0}, Lc/c/a/a/f/b/a;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/c/a/a/f/b/c;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Lc/c/a/a/f/b/a;->t(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return p2
.end method

.method public final f(Lc/c/a/a/d/a;Ljava/lang/String;Z)I
    .locals 1

    invoke-virtual {p0}, Lc/c/a/a/f/b/a;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/c/a/a/f/b/c;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1, v0}, Lc/c/a/a/f/b/a;->t(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return p2
.end method

.method public final g()I
    .locals 2

    invoke-virtual {p0}, Lc/c/a/a/f/b/a;->c()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lc/c/a/a/f/b/a;->t(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method
