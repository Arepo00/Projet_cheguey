.class public final Lc/c/a/a/f/c/z0;
.super Lc/c/a/a/c/l/u/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/a/a/f/c/z0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lc/c/a/a/f/c/f1;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:J

.field public k:J

.field public l:Z

.field public m:Lc/c/b/h/g0;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/a/f/c/b1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/a/f/c/y0;

    invoke-direct {v0}, Lc/c/a/a/f/c/y0;-><init>()V

    sput-object v0, Lc/c/a/a/f/c/z0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    new-instance v0, Lc/c/a/a/f/c/f1;

    invoke-direct {v0}, Lc/c/a/a/f/c/f1;-><init>()V

    iput-object v0, p0, Lc/c/a/a/f/c/z0;->g:Lc/c/a/a/f/c/f1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lc/c/a/a/f/c/f1;Ljava/lang/String;Ljava/lang/String;JJZLc/c/b/h/g0;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lc/c/a/a/f/c/f1;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJZ",
            "Lc/c/b/h/g0;",
            "Ljava/util/List<",
            "Lc/c/a/a/f/c/b1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    iput-object p1, p0, Lc/c/a/a/f/c/z0;->b:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/a/f/c/z0;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lc/c/a/a/f/c/z0;->d:Z

    iput-object p4, p0, Lc/c/a/a/f/c/z0;->e:Ljava/lang/String;

    iput-object p5, p0, Lc/c/a/a/f/c/z0;->f:Ljava/lang/String;

    if-nez p6, :cond_0

    new-instance p1, Lc/c/a/a/f/c/f1;

    invoke-direct {p1}, Lc/c/a/a/f/c/f1;-><init>()V

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p6, Lc/c/a/a/f/c/f1;->b:Ljava/util/List;

    new-instance p2, Lc/c/a/a/f/c/f1;

    invoke-direct {p2}, Lc/c/a/a/f/c/f1;-><init>()V

    if-eqz p1, :cond_1

    iget-object p3, p2, Lc/c/a/a/f/c/f1;->b:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    move-object p1, p2

    .line 2
    :goto_0
    iput-object p1, p0, Lc/c/a/a/f/c/z0;->g:Lc/c/a/a/f/c/f1;

    iput-object p7, p0, Lc/c/a/a/f/c/z0;->h:Ljava/lang/String;

    iput-object p8, p0, Lc/c/a/a/f/c/z0;->i:Ljava/lang/String;

    iput-wide p9, p0, Lc/c/a/a/f/c/z0;->j:J

    iput-wide p11, p0, Lc/c/a/a/f/c/z0;->k:J

    iput-boolean p13, p0, Lc/c/a/a/f/c/z0;->l:Z

    iput-object p14, p0, Lc/c/a/a/f/c/z0;->m:Lc/c/b/h/g0;

    if-nez p15, :cond_2

    invoke-static {}, Lc/c/a/a/f/c/n;->h()Lc/c/a/a/f/c/n;

    move-result-object p15

    :cond_2
    iput-object p15, p0, Lc/c/a/a/f/c/z0;->n:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lc/c/a/a/f/c/z0;->b:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lc/c/a/a/f/c/z0;->c:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v1, p0, Lc/c/a/a/f/c/z0;->d:Z

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lc/c/a/a/c/l/q;->c0(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lc/c/a/a/f/c/z0;->e:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lc/c/a/a/f/c/z0;->f:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lc/c/a/a/f/c/z0;->g:Lc/c/a/a/f/c/f1;

    const/4 v2, 0x7

    invoke-static {p1, v2, v1, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lc/c/a/a/f/c/z0;->h:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lc/c/a/a/f/c/z0;->i:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v1, p0, Lc/c/a/a/f/c/z0;->j:J

    const/16 v4, 0xa

    invoke-static {p1, v4, v1, v2}, Lc/c/a/a/c/l/q;->e0(Landroid/os/Parcel;IJ)V

    iget-wide v1, p0, Lc/c/a/a/f/c/z0;->k:J

    const/16 v4, 0xb

    invoke-static {p1, v4, v1, v2}, Lc/c/a/a/c/l/q;->e0(Landroid/os/Parcel;IJ)V

    iget-boolean v1, p0, Lc/c/a/a/f/c/z0;->l:Z

    const/16 v2, 0xc

    invoke-static {p1, v2, v1}, Lc/c/a/a/c/l/q;->c0(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lc/c/a/a/f/c/z0;->m:Lc/c/b/h/g0;

    const/16 v2, 0xd

    invoke-static {p1, v2, v1, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lc/c/a/a/f/c/z0;->n:Ljava/util/List;

    const/16 v1, 0xe

    invoke-static {p1, v1, p2, v3}, Lc/c/a/a/c/l/q;->k0(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 1
    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
