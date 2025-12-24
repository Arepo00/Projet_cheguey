.class public Lc/c/a/a/c/l/s;
.super Lc/c/a/a/c/l/u/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/a/a/c/l/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public c:Landroid/os/IBinder;

.field public d:Lc/c/a/a/c/a;

.field public e:Z

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/a/c/l/z;

    invoke-direct {v0}, Lc/c/a/a/c/l/z;-><init>()V

    sput-object v0, Lc/c/a/a/c/l/s;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Lc/c/a/a/c/a;ZZ)V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    iput p1, p0, Lc/c/a/a/c/l/s;->b:I

    iput-object p2, p0, Lc/c/a/a/c/l/s;->c:Landroid/os/IBinder;

    iput-object p3, p0, Lc/c/a/a/c/l/s;->d:Lc/c/a/a/c/a;

    iput-boolean p4, p0, Lc/c/a/a/c/l/s;->e:Z

    iput-boolean p5, p0, Lc/c/a/a/c/l/s;->f:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc/c/a/a/c/l/s;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc/c/a/a/c/l/s;

    iget-object v1, p0, Lc/c/a/a/c/l/s;->d:Lc/c/a/a/c/a;

    iget-object v3, p1, Lc/c/a/a/c/l/s;->d:Lc/c/a/a/c/a;

    invoke-virtual {v1, v3}, Lc/c/a/a/c/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lc/c/a/a/c/l/s;->h()Lc/c/a/a/c/l/k;

    move-result-object v1

    invoke-virtual {p1}, Lc/c/a/a/c/l/s;->h()Lc/c/a/a/c/l/k;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public h()Lc/c/a/a/c/l/k;
    .locals 1

    iget-object v0, p0, Lc/c/a/a/c/l/s;->c:Landroid/os/IBinder;

    invoke-static {v0}, Lc/c/a/a/c/l/k$a;->t(Landroid/os/IBinder;)Lc/c/a/a/c/l/k;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lc/c/a/a/c/l/s;->b:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lc/c/a/a/c/l/q;->d0(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lc/c/a/a/c/l/s;->c:Landroid/os/IBinder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 1
    invoke-static {p1, v2}, Lc/c/a/a/c/l/q;->n0(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p1, v2}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x3

    .line 2
    iget-object v2, p0, Lc/c/a/a/c/l/s;->d:Lc/c/a/a/c/a;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v1, v2, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    .line 4
    iget-boolean v1, p0, Lc/c/a/a/c/l/s;->e:Z

    .line 5
    invoke-static {p1, p2, v1}, Lc/c/a/a/c/l/q;->c0(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x5

    .line 6
    iget-boolean v1, p0, Lc/c/a/a/c/l/s;->f:Z

    .line 7
    invoke-static {p1, p2, v1}, Lc/c/a/a/c/l/q;->c0(Landroid/os/Parcel;IZ)V

    .line 8
    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
