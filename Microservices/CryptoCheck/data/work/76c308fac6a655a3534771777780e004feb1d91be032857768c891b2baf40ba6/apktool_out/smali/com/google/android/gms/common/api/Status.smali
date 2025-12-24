.class public final Lcom/google/android/gms/common/api/Status;
.super Lc/c/a/a/c/l/u/a;
.source ""

# interfaces
.implements Lc/c/a/a/c/k/h;
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lcom/google/android/gms/common/api/Status;

.field public static final g:Lcom/google/android/gms/common/api/Status;

.field public static final h:Lcom/google/android/gms/common/api/Status;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Landroid/app/PendingIntent;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 2
    sput-object v0, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xf

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 4
    sput-object v0, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x10

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 6
    sput-object v0, Lcom/google/android/gms/common/api/Status;->h:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lc/c/a/a/c/k/m;

    invoke-direct {v0}, Lc/c/a/a/c/k/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/api/Status;->b:I

    iput p2, p0, Lcom/google/android/gms/common/api/Status;->c:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/Status;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/common/api/Status;->e:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/Status;->b:I

    iput p1, p0, Lcom/google/android/gms/common/api/Status;->c:I

    iput-object p2, p0, Lcom/google/android/gms/common/api/Status;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/Status;->e:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->b:I

    iget v2, p1, Lcom/google/android/gms/common/api/Status;->b:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->c:I

    iget v2, p1, Lcom/google/android/gms/common/api/Status;->c:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/common/api/Status;->d:Ljava/lang/String;

    invoke-static {v0, v2}, La/a/a/a/a;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->e:Landroid/app/PendingIntent;

    iget-object p1, p1, Lcom/google/android/gms/common/api/Status;->e:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, La/a/a/a/a;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final f()Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/api/Status;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v1, 0x20

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown status code: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "DEAD_CLIENT"

    goto :goto_0

    :pswitch_2
    const-string v0, "API_NOT_CONNECTED"

    goto :goto_0

    :pswitch_3
    const-string v0, "CANCELED"

    goto :goto_0

    :pswitch_4
    const-string v0, "TIMEOUT"

    goto :goto_0

    :pswitch_5
    const-string v0, "INTERRUPTED"

    goto :goto_0

    :pswitch_6
    const-string v0, "ERROR"

    goto :goto_0

    :pswitch_7
    const-string v0, "DEVELOPER_ERROR"

    goto :goto_0

    :pswitch_8
    const-string v0, "INTERNAL_ERROR"

    goto :goto_0

    :pswitch_9
    const-string v0, "NETWORK_ERROR"

    goto :goto_0

    :pswitch_a
    const-string v0, "RESOLUTION_REQUIRED"

    goto :goto_0

    :pswitch_b
    const-string v0, "INVALID_ACCOUNT"

    goto :goto_0

    :pswitch_c
    const-string v0, "SIGN_IN_REQUIRED"

    goto :goto_0

    :pswitch_d
    const-string v0, "SERVICE_DISABLED"

    goto :goto_0

    :pswitch_e
    const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_0

    :pswitch_f
    const-string v0, "SUCCESS"

    goto :goto_0

    :pswitch_10
    const-string v0, "SUCCESS_CACHE"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/common/api/Status;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/common/api/Status;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->d:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->e:Landroid/app/PendingIntent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, La/a/a/a/a;->B0(Ljava/lang/Object;)Lc/c/a/a/c/l/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "statusCode"

    invoke-virtual {v0, v2, v1}, Lc/c/a/a/c/l/p;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/a/c/l/p;

    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->e:Landroid/app/PendingIntent;

    const-string v2, "resolution"

    invoke-virtual {v0, v2, v1}, Lc/c/a/a/c/l/p;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/a/c/l/p;

    invoke-virtual {v0}, Lc/c/a/a/c/l/p;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 1
    iget v1, p0, Lcom/google/android/gms/common/api/Status;->c:I

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v1}, Lc/c/a/a/c/l/q;->d0(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->d:Ljava/lang/String;

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v1, v2, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->e:Landroid/app/PendingIntent;

    invoke-static {p1, v1, v2, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x3e8

    iget v1, p0, Lcom/google/android/gms/common/api/Status;->b:I

    invoke-static {p1, p2, v1}, Lc/c/a/a/c/l/q;->d0(Landroid/os/Parcel;II)V

    .line 5
    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
