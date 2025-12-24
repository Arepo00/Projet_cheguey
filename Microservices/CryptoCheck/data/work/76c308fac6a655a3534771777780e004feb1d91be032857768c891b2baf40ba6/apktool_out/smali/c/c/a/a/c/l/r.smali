.class public Lc/c/a/a/c/l/r;
.super Lc/c/a/a/c/l/u/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/a/a/c/l/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:Landroid/accounts/Account;

.field public final d:I

.field public final e:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/a/c/l/y;

    invoke-direct {v0}, Lc/c/a/a/c/l/y;-><init>()V

    sput-object v0, Lc/c/a/a/c/l/r;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    iput p1, p0, Lc/c/a/a/c/l/r;->b:I

    iput-object p2, p0, Lc/c/a/a/c/l/r;->c:Landroid/accounts/Account;

    iput p3, p0, Lc/c/a/a/c/l/r;->d:I

    iput-object p4, p0, Lc/c/a/a/c/l/r;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lc/c/a/a/c/l/r;->b:I

    iput-object p1, p0, Lc/c/a/a/c/l/r;->c:Landroid/accounts/Account;

    iput p2, p0, Lc/c/a/a/c/l/r;->d:I

    iput-object p3, p0, Lc/c/a/a/c/l/r;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lc/c/a/a/c/l/r;->b:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lc/c/a/a/c/l/q;->d0(Landroid/os/Parcel;II)V

    .line 1
    iget-object v1, p0, Lc/c/a/a/c/l/r;->c:Landroid/accounts/Account;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    .line 3
    iget v2, p0, Lc/c/a/a/c/l/r;->d:I

    .line 4
    invoke-static {p1, v1, v2}, Lc/c/a/a/c/l/q;->d0(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    .line 5
    iget-object v2, p0, Lc/c/a/a/c/l/r;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 6
    invoke-static {p1, v1, v2, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 7
    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
