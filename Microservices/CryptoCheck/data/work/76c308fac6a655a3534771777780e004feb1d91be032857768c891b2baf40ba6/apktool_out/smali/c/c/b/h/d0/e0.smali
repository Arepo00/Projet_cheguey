.class public final Lc/c/b/h/d0/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/a/c/l/u/c;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/b/h/d0/e0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:J

.field public c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/b/h/d0/d0;

    invoke-direct {v0}, Lc/c/b/h/d0/d0;-><init>()V

    sput-object v0, Lc/c/b/h/d0/e0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lc/c/b/h/d0/e0;->b:J

    iput-wide p3, p0, Lc/c/b/h/d0/e0;->c:J

    return-void
.end method

.method public static c(Lorg/json/JSONObject;)Lc/c/b/h/d0/e0;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "lastSignInTimestamp"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "creationTimestamp"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    new-instance p0, Lc/c/b/h/d0/e0;

    invoke-direct {p0, v1, v2, v3, v4}, Lc/c/b/h/d0/e0;-><init>(JJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
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
    iget-wide v0, p0, Lc/c/b/h/d0/e0;->b:J

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v0, v1}, Lc/c/a/a/c/l/q;->e0(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x2

    .line 3
    iget-wide v1, p0, Lc/c/b/h/d0/e0;->c:J

    .line 4
    invoke-static {p1, v0, v1, v2}, Lc/c/a/a/c/l/q;->e0(Landroid/os/Parcel;IJ)V

    .line 5
    invoke-static {p1, p2}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
