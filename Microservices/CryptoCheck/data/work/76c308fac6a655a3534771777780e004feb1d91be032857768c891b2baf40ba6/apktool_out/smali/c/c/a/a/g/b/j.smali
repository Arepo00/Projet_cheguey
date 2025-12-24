.class public final Lc/c/a/a/g/b/j;
.super Lc/c/a/a/c/l/u/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/a/a/g/b/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:Lc/c/a/a/c/l/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/a/g/b/i;

    invoke-direct {v0}, Lc/c/a/a/g/b/i;-><init>()V

    sput-object v0, Lc/c/a/a/g/b/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILc/c/a/a/c/l/r;)V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    iput p1, p0, Lc/c/a/a/g/b/j;->b:I

    iput-object p2, p0, Lc/c/a/a/g/b/j;->c:Lc/c/a/a/c/l/r;

    return-void
.end method

.method public constructor <init>(Lc/c/a/a/c/l/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lc/c/a/a/g/b/j;->b:I

    iput-object p1, p0, Lc/c/a/a/g/b/j;->c:Lc/c/a/a/c/l/r;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lc/c/a/a/g/b/j;->b:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lc/c/a/a/c/l/q;->d0(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lc/c/a/a/g/b/j;->c:Lc/c/a/a/c/l/r;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 1
    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
