.class public final Lc/c/b/h/d0/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/a/c/l/u/c;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/b/h/d0/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Lc/c/b/h/d0/c0;

.field public c:Lc/c/b/h/d0/v;

.field public d:Lc/c/b/h/g0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/b/h/d0/w;

    invoke-direct {v0}, Lc/c/b/h/d0/w;-><init>()V

    sput-object v0, Lc/c/b/h/d0/x;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lc/c/b/h/d0/c0;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lc/c/b/h/d0/x;->b:Lc/c/b/h/d0/c0;

    .line 1
    iget-object v0, p1, Lc/c/b/h/d0/c0;->f:Ljava/util/List;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lc/c/b/h/d0/x;->c:Lc/c/b/h/d0/v;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/b/h/d0/z;

    .line 3
    iget-object v2, v2, Lc/c/b/h/d0/z;->i:Ljava/lang/String;

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lc/c/b/h/d0/v;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c/b/h/d0/z;

    .line 5
    iget-object v3, v3, Lc/c/b/h/d0/z;->c:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/c/b/h/d0/z;

    .line 7
    iget-object v4, v4, Lc/c/b/h/d0/z;->i:Ljava/lang/String;

    .line 8
    iget-boolean v5, p1, Lc/c/b/h/d0/c0;->k:Z

    .line 9
    invoke-direct {v2, v3, v4, v5}, Lc/c/b/h/d0/v;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lc/c/b/h/d0/x;->c:Lc/c/b/h/d0/v;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/c/b/h/d0/x;->c:Lc/c/b/h/d0/v;

    if-nez v0, :cond_2

    new-instance v0, Lc/c/b/h/d0/v;

    .line 10
    iget-boolean v1, p1, Lc/c/b/h/d0/c0;->k:Z

    .line 11
    invoke-direct {v0, v1}, Lc/c/b/h/d0/v;-><init>(Z)V

    iput-object v0, p0, Lc/c/b/h/d0/x;->c:Lc/c/b/h/d0/v;

    .line 12
    :cond_2
    iget-object p1, p1, Lc/c/b/h/d0/c0;->l:Lc/c/b/h/g0;

    .line 13
    iput-object p1, p0, Lc/c/b/h/d0/x;->d:Lc/c/b/h/g0;

    return-void
.end method

.method public constructor <init>(Lc/c/b/h/d0/c0;Lc/c/b/h/d0/v;Lc/c/b/h/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/b/h/d0/x;->b:Lc/c/b/h/d0/c0;

    iput-object p2, p0, Lc/c/b/h/d0/x;->c:Lc/c/b/h/d0/v;

    iput-object p3, p0, Lc/c/b/h/d0/x;->d:Lc/c/b/h/g0;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 1
    iget-object v1, p0, Lc/c/b/h/d0/x;->b:Lc/c/b/h/d0/c0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lc/c/b/h/d0/x;->c:Lc/c/b/h/d0/v;

    .line 4
    invoke-static {p1, v1, v2, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lc/c/b/h/d0/x;->d:Lc/c/b/h/g0;

    invoke-static {p1, v1, v2, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 5
    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
