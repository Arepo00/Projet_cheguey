.class public final Lc/c/a/a/g/b/c;
.super Lc/c/a/a/c/l/u/a;
.source ""

# interfaces
.implements Lc/c/a/a/c/k/h;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/a/a/g/b/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public c:I

.field public d:Landroid/content/Intent;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/a/g/b/b;

    invoke-direct {v0}, Lc/c/a/a/g/b/b;-><init>()V

    sput-object v0, Lc/c/a/a/g/b/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lc/c/a/a/g/b/c;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lc/c/a/a/g/b/c;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lc/c/a/a/g/b/c;->d:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    iput p1, p0, Lc/c/a/a/g/b/c;->b:I

    iput p2, p0, Lc/c/a/a/g/b/c;->c:I

    iput-object p3, p0, Lc/c/a/a/g/b/c;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final f()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget v0, p0, Lc/c/a/a/g/b/c;->c:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->h:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lc/c/a/a/g/b/c;->b:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lc/c/a/a/c/l/q;->d0(Landroid/os/Parcel;II)V

    iget v1, p0, Lc/c/a/a/g/b/c;->c:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lc/c/a/a/c/l/q;->d0(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lc/c/a/a/g/b/c;->d:Landroid/content/Intent;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 1
    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
