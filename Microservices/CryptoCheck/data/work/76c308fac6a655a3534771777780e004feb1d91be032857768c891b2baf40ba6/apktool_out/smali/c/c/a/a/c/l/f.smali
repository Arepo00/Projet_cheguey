.class public Lc/c/a/a/c/l/f;
.super Lc/c/a/a/c/l/u/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/a/a/c/l/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Landroid/os/IBinder;

.field public g:[Lcom/google/android/gms/common/api/Scope;

.field public h:Landroid/os/Bundle;

.field public i:Landroid/accounts/Account;

.field public j:[Lc/c/a/a/c/c;

.field public k:[Lc/c/a/a/c/c;

.field public l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/a/c/l/c0;

    invoke-direct {v0}, Lc/c/a/a/c/l/c0;-><init>()V

    sput-object v0, Lc/c/a/a/c/l/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lc/c/a/a/c/l/f;->b:I

    sget v0, Lc/c/a/a/c/e;->a:I

    iput v0, p0, Lc/c/a/a/c/l/f;->d:I

    iput p1, p0, Lc/c/a/a/c/l/f;->c:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/c/a/a/c/l/f;->l:Z

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lc/c/a/a/c/c;[Lc/c/a/a/c/c;Z)V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    iput p1, p0, Lc/c/a/a/c/l/f;->b:I

    iput p2, p0, Lc/c/a/a/c/l/f;->c:I

    iput p3, p0, Lc/c/a/a/c/l/f;->d:I

    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iput-object p2, p0, Lc/c/a/a/c/l/f;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lc/c/a/a/c/l/f;->e:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_2

    const/4 p1, 0x0

    if-eqz p5, :cond_1

    invoke-static {p5}, Lc/c/a/a/c/l/k$a;->t(Landroid/os/IBinder;)Lc/c/a/a/c/l/k;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/a/c/l/a;->y(Lc/c/a/a/c/l/k;)Landroid/accounts/Account;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lc/c/a/a/c/l/f;->i:Landroid/accounts/Account;

    goto :goto_1

    :cond_2
    iput-object p5, p0, Lc/c/a/a/c/l/f;->f:Landroid/os/IBinder;

    iput-object p8, p0, Lc/c/a/a/c/l/f;->i:Landroid/accounts/Account;

    :goto_1
    iput-object p6, p0, Lc/c/a/a/c/l/f;->g:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lc/c/a/a/c/l/f;->h:Landroid/os/Bundle;

    iput-object p9, p0, Lc/c/a/a/c/l/f;->j:[Lc/c/a/a/c/c;

    iput-object p10, p0, Lc/c/a/a/c/l/f;->k:[Lc/c/a/a/c/c;

    iput-boolean p11, p0, Lc/c/a/a/c/l/f;->l:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lc/c/a/a/c/l/f;->b:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lc/c/a/a/c/l/q;->d0(Landroid/os/Parcel;II)V

    iget v1, p0, Lc/c/a/a/c/l/f;->c:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lc/c/a/a/c/l/q;->d0(Landroid/os/Parcel;II)V

    iget v1, p0, Lc/c/a/a/c/l/f;->d:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lc/c/a/a/c/l/q;->d0(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lc/c/a/a/c/l/f;->e:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lc/c/a/a/c/l/f;->f:Landroid/os/IBinder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    .line 1
    invoke-static {p1, v2}, Lc/c/a/a/c/l/q;->n0(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p1, v2}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x6

    .line 2
    iget-object v2, p0, Lc/c/a/a/c/l/f;->g:[Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1, v1, v2, p2, v3}, Lc/c/a/a/c/l/q;->j0(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lc/c/a/a/c/l/f;->h:Landroid/os/Bundle;

    if-nez v2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {p1, v1}, Lc/c/a/a/c/l/q;->n0(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p1, v1}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    :goto_1
    const/16 v1, 0x8

    .line 4
    iget-object v2, p0, Lc/c/a/a/c/l/f;->i:Landroid/accounts/Account;

    invoke-static {p1, v1, v2, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lc/c/a/a/c/l/f;->j:[Lc/c/a/a/c/c;

    invoke-static {p1, v1, v2, p2, v3}, Lc/c/a/a/c/l/q;->j0(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-object v2, p0, Lc/c/a/a/c/l/f;->k:[Lc/c/a/a/c/c;

    invoke-static {p1, v1, v2, p2, v3}, Lc/c/a/a/c/l/q;->j0(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 p2, 0xc

    iget-boolean v1, p0, Lc/c/a/a/c/l/f;->l:Z

    invoke-static {p1, p2, v1}, Lc/c/a/a/c/l/q;->c0(Landroid/os/Parcel;IZ)V

    .line 5
    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
