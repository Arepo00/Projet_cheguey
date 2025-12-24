.class public final Lc/c/b/h/d0/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/a/c/l/u/c;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/b/h/d0/v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/b/h/d0/u;

    invoke-direct {v0}, Lc/c/b/h/d0/u;-><init>()V

    sput-object v0, Lc/c/b/h/d0/v;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc/c/a/a/c/l/q;->d(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lc/c/a/a/c/l/q;->d(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lc/c/b/h/d0/v;->b:Ljava/lang/String;

    iput-object p2, p0, Lc/c/b/h/d0/v;->c:Ljava/lang/String;

    invoke-static {p2}, Lc/c/b/h/d0/k;->d(Ljava/lang/String;)Ljava/util/Map;

    iput-boolean p3, p0, Lc/c/b/h/d0/v;->d:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lc/c/b/h/d0/v;->d:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lc/c/b/h/d0/v;->c:Ljava/lang/String;

    iput-object p1, p0, Lc/c/b/h/d0/v;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 1
    iget-object v0, p0, Lc/c/b/h/d0/v;->b:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget-object v1, p0, Lc/c/b/h/d0/v;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    .line 3
    iget-boolean v1, p0, Lc/c/b/h/d0/v;->d:Z

    .line 4
    invoke-static {p1, v0, v1}, Lc/c/a/a/c/l/q;->c0(Landroid/os/Parcel;IZ)V

    .line 5
    invoke-static {p1, p2}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
