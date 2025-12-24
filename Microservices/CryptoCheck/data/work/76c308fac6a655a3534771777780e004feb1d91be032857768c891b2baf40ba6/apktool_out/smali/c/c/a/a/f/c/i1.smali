.class public final Lc/c/a/a/f/c/i1;
.super Lc/c/a/a/c/l/u/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/a/c/l/u/a;",
        "Ljava/lang/Object<",
        "Lc/c/a/a/f/c/i1;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/a/a/f/c/i1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lc/c/a/a/f/c/b1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/a/f/c/j1;

    invoke-direct {v0}, Lc/c/a/a/f/c/j1;-><init>()V

    sput-object v0, Lc/c/a/a/f/c/i1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/c/a/a/f/c/b1;)V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    iput-object p1, p0, Lc/c/a/a/f/c/i1;->b:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/a/f/c/i1;->c:Ljava/lang/String;

    iput-object p3, p0, Lc/c/a/a/f/c/i1;->d:Ljava/lang/String;

    iput-object p4, p0, Lc/c/a/a/f/c/i1;->e:Lc/c/a/a/f/c/b1;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lc/c/a/a/f/c/i1;->b:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lc/c/a/a/f/c/i1;->c:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lc/c/a/a/f/c/i1;->d:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lc/c/a/a/f/c/i1;->e:Lc/c/a/a/f/c/b1;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 1
    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
