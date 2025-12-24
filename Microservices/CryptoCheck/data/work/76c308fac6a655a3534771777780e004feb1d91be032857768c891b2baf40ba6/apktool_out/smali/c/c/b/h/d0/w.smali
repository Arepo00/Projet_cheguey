.class public final Lc/c/b/h/d0/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lc/c/b/h/d0/x;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    invoke-static {p1}, Lc/c/a/a/c/l/q;->b0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 2
    invoke-static {p1, v4}, Lc/c/a/a/c/l/q;->Z(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    sget-object v3, Lc/c/b/h/g0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v4, v3}, Lc/c/a/a/c/l/q;->n(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lc/c/b/h/g0;

    goto :goto_0

    :cond_1
    sget-object v2, Lc/c/b/h/d0/v;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v4, v2}, Lc/c/a/a/c/l/q;->n(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lc/c/b/h/d0/v;

    goto :goto_0

    :cond_2
    sget-object v1, Lc/c/b/h/d0/c0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v4, v1}, Lc/c/a/a/c/l/q;->n(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lc/c/b/h/d0/c0;

    goto :goto_0

    :cond_3
    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->v(Landroid/os/Parcel;I)V

    new-instance p1, Lc/c/b/h/d0/x;

    invoke-direct {p1, v1, v2, v3}, Lc/c/b/h/d0/x;-><init>(Lc/c/b/h/d0/c0;Lc/c/b/h/d0/v;Lc/c/b/h/g0;)V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lc/c/b/h/d0/x;

    return-object p1
.end method
