.class public final Lc/c/a/a/f/c/v0;
.super Lc/c/a/a/c/l/u/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/a/a/f/c/v0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/a/f/c/b1;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lc/c/b/h/g0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/a/f/c/u0;

    invoke-direct {v0}, Lc/c/a/a/f/c/u0;-><init>()V

    sput-object v0, Lc/c/a/a/f/c/v0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lc/c/b/h/g0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lc/c/a/a/f/c/b1;",
            ">;",
            "Lc/c/b/h/g0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    iput-object p1, p0, Lc/c/a/a/f/c/v0;->b:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/a/f/c/v0;->c:Ljava/util/List;

    iput-object p3, p0, Lc/c/a/a/f/c/v0;->d:Lc/c/b/h/g0;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lc/c/a/a/f/c/v0;->b:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lc/c/a/a/f/c/v0;->c:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->k0(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v1, p0, Lc/c/a/a/f/c/v0;->d:Lc/c/b/h/g0;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 1
    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
