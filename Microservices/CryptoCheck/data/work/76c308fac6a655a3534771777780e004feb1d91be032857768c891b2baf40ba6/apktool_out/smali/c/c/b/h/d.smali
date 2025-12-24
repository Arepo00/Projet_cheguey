.class public Lc/c/b/h/d;
.super Lc/c/b/h/b;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/b/h/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/b/h/i0;

    invoke-direct {v0}, Lc/c/b/h/i0;-><init>()V

    sput-object v0, Lc/c/b/h/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lc/c/b/h/b;-><init>()V

    invoke-static {p1}, Lc/c/a/a/c/l/q;->d(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lc/c/b/h/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final h()Lc/c/b/h/b;
    .locals 2

    new-instance v0, Lc/c/b/h/d;

    iget-object v1, p0, Lc/c/b/h/d;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lc/c/b/h/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lc/c/b/h/d;->b:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 1
    invoke-static {p1, p2}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
