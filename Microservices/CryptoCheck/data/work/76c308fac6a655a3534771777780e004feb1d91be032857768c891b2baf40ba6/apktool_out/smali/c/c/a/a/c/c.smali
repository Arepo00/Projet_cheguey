.class public Lc/c/a/a/c/c;
.super Lc/c/a/a/c/l/u/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/a/a/c/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final d:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/a/c/r;

    invoke-direct {v0}, Lc/c/a/a/c/r;-><init>()V

    sput-object v0, Lc/c/a/a/c/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    iput-object p1, p0, Lc/c/a/a/c/c;->b:Ljava/lang/String;

    iput p2, p0, Lc/c/a/a/c/c;->c:I

    iput-wide p3, p0, Lc/c/a/a/c/c;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    iput-object p1, p0, Lc/c/a/a/c/c;->b:Ljava/lang/String;

    iput-wide p2, p0, Lc/c/a/a/c/c;->d:J

    const/4 p1, -0x1

    iput p1, p0, Lc/c/a/a/c/c;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lc/c/a/a/c/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lc/c/a/a/c/c;

    .line 1
    iget-object v0, p0, Lc/c/a/a/c/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v2, p1, Lc/c/a/a/c/c;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lc/c/a/a/c/c;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lc/c/a/a/c/c;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0}, Lc/c/a/a/c/c;->h()J

    move-result-wide v2

    invoke-virtual {p1}, Lc/c/a/a/c/c;->h()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public h()J
    .locals 5

    iget-wide v0, p0, Lc/c/a/a/c/c;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lc/c/a/a/c/c;->c:I

    int-to-long v0, v0

    :cond_0
    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lc/c/a/a/c/c;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0}, Lc/c/a/a/c/c;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, La/a/a/a/a;->B0(Ljava/lang/Object;)Lc/c/a/a/c/l/p;

    move-result-object v0

    .line 1
    iget-object v1, p0, Lc/c/a/a/c/c;->b:Ljava/lang/String;

    const-string v2, "name"

    .line 2
    invoke-virtual {v0, v2, v1}, Lc/c/a/a/c/l/p;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/a/c/l/p;

    invoke-virtual {p0}, Lc/c/a/a/c/c;->h()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lc/c/a/a/c/l/p;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/a/c/l/p;

    invoke-virtual {v0}, Lc/c/a/a/c/l/p;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 1
    iget-object v0, p0, Lc/c/a/a/c/c;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v0, v1}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget v1, p0, Lc/c/a/a/c/c;->c:I

    invoke-static {p1, v0, v1}, Lc/c/a/a/c/l/q;->d0(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lc/c/a/a/c/c;->h()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lc/c/a/a/c/l/q;->e0(Landroid/os/Parcel;IJ)V

    .line 3
    invoke-static {p1, p2}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
