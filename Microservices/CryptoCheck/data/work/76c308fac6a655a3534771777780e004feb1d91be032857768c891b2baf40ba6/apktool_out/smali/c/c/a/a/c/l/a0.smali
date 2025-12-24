.class public final Lc/c/a/a/c/l/a0;
.super Lc/c/a/a/c/l/u/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/a/a/c/l/a0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Landroid/os/Bundle;

.field public c:[Lc/c/a/a/c/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/a/c/l/b0;

    invoke-direct {v0}, Lc/c/a/a/c/l/b0;-><init>()V

    sput-object v0, Lc/c/a/a/c/l/a0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;[Lc/c/a/a/c/c;)V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    iput-object p1, p0, Lc/c/a/a/c/l/a0;->b:Landroid/os/Bundle;

    iput-object p2, p0, Lc/c/a/a/c/l/a0;->c:[Lc/c/a/a/c/c;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lc/c/a/a/c/l/a0;->b:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 1
    invoke-static {p1, v2}, Lc/c/a/a/c/l/q;->n0(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p1, v2}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x2

    .line 2
    iget-object v2, p0, Lc/c/a/a/c/l/a0;->c:[Lc/c/a/a/c/c;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lc/c/a/a/c/l/q;->j0(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 3
    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
