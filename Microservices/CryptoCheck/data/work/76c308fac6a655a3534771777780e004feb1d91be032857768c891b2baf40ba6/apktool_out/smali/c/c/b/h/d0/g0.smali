.class public final Lc/c/b/h/d0/g0;
.super Lc/c/b/h/u;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/b/h/d0/g0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/b/h/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/b/h/d0/i0;

    invoke-direct {v0}, Lc/c/b/h/d0/i0;-><init>()V

    sput-object v0, Lc/c/b/h/d0/g0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/c/b/h/u;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lc/c/b/h/y;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/c/b/h/u;-><init>()V

    iput-object p1, p0, Lc/c/b/h/d0/g0;->b:Ljava/lang/String;

    iput-object p2, p0, Lc/c/b/h/d0/g0;->c:Ljava/lang/String;

    iput-object p3, p0, Lc/c/b/h/d0/g0;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lc/c/b/h/d0/g0;->b:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lc/c/b/h/d0/g0;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lc/c/b/h/d0/g0;->d:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->k0(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 1
    invoke-static {p1, p2}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
