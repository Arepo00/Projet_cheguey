.class public final Lc/c/b/h/d0/f0;
.super Lc/c/b/h/t;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/b/h/d0/f0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/b/h/y;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lc/c/b/h/d0/g0;

.field public final d:Ljava/lang/String;

.field public final e:Lc/c/b/h/g0;

.field public final f:Lc/c/b/h/d0/c0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/b/h/d0/h0;

    invoke-direct {v0}, Lc/c/b/h/d0/h0;-><init>()V

    sput-object v0, Lc/c/b/h/d0/f0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lc/c/b/h/d0/g0;Ljava/lang/String;Lc/c/b/h/g0;Lc/c/b/h/d0/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/b/h/y;",
            ">;",
            "Lc/c/b/h/d0/g0;",
            "Ljava/lang/String;",
            "Lc/c/b/h/g0;",
            "Lc/c/b/h/d0/c0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lc/c/b/h/t;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c/b/h/d0/f0;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/b/h/s;

    instance-of v1, v0, Lc/c/b/h/y;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/c/b/h/d0/f0;->b:Ljava/util/List;

    check-cast v0, Lc/c/b/h/y;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lc/c/b/h/d0/f0;->c:Lc/c/b/h/d0/g0;

    invoke-static {p3}, Lc/c/a/a/c/l/q;->d(Ljava/lang/String;)Ljava/lang/String;

    iput-object p3, p0, Lc/c/b/h/d0/f0;->d:Ljava/lang/String;

    iput-object p4, p0, Lc/c/b/h/d0/f0;->e:Lc/c/b/h/g0;

    iput-object p5, p0, Lc/c/b/h/d0/f0;->f:Lc/c/b/h/d0/c0;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lc/c/b/h/d0/f0;->b:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->k0(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 1
    iget-object v1, p0, Lc/c/b/h/d0/f0;->c:Lc/c/b/h/d0/g0;

    const/4 v2, 0x2

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lc/c/b/h/d0/f0;->d:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lc/c/b/h/d0/f0;->e:Lc/c/b/h/g0;

    invoke-static {p1, v1, v2, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lc/c/b/h/d0/f0;->f:Lc/c/b/h/d0/c0;

    invoke-static {p1, v1, v2, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 3
    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
