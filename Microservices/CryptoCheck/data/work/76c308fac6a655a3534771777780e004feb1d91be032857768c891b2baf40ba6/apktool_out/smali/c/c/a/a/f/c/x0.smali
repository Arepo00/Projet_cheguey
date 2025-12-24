.class public final Lc/c/a/a/f/c/x0;
.super Lc/c/a/a/c/l/u/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/a/c/l/u/a;",
        "Ljava/lang/Object<",
        "Lc/c/a/a/f/c/x0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/a/a/f/c/x0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Lc/c/a/a/f/c/l1;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/a/f/c/w0;

    invoke-direct {v0}, Lc/c/a/a/f/c/w0;-><init>()V

    sput-object v0, Lc/c/a/a/f/c/x0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    .line 1
    new-instance v0, Lc/c/a/a/f/c/l1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/a/f/c/l1;-><init>(Ljava/util/List;)V

    .line 2
    iput-object v0, p0, Lc/c/a/a/f/c/x0;->f:Lc/c/a/a/f/c/l1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLc/c/a/a/f/c/l1;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Lc/c/a/a/f/c/l1;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    iput-object p1, p0, Lc/c/a/a/f/c/x0;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lc/c/a/a/f/c/x0;->c:Z

    iput-object p3, p0, Lc/c/a/a/f/c/x0;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lc/c/a/a/f/c/x0;->e:Z

    if-nez p5, :cond_0

    .line 3
    new-instance p1, Lc/c/a/a/f/c/l1;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lc/c/a/a/f/c/l1;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p5, Lc/c/a/a/f/c/l1;->c:Ljava/util/List;

    new-instance p2, Lc/c/a/a/f/c/l1;

    invoke-direct {p2, p1}, Lc/c/a/a/f/c/l1;-><init>(Ljava/util/List;)V

    move-object p1, p2

    .line 5
    :goto_0
    iput-object p1, p0, Lc/c/a/a/f/c/x0;->f:Lc/c/a/a/f/c/l1;

    iput-object p6, p0, Lc/c/a/a/f/c/x0;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lc/c/a/a/f/c/x0;->b:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v1, p0, Lc/c/a/a/f/c/x0;->c:Z

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lc/c/a/a/c/l/q;->c0(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lc/c/a/a/f/c/x0;->d:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v1, p0, Lc/c/a/a/f/c/x0;->e:Z

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lc/c/a/a/c/l/q;->c0(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lc/c/a/a/f/c/x0;->f:Lc/c/a/a/f/c/l1;

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lc/c/a/a/f/c/x0;->g:Ljava/util/List;

    const/4 v1, 0x7

    invoke-static {p1, v1, p2, v3}, Lc/c/a/a/c/l/q;->i0(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 1
    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
