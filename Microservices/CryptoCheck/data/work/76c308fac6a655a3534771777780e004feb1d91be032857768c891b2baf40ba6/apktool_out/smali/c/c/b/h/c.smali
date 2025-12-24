.class public Lc/c/b/h/c;
.super Lc/c/b/h/b;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/b/h/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/b/h/h0;

    invoke-direct {v0}, Lc/c/b/h/h0;-><init>()V

    sput-object v0, Lc/c/b/h/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lc/c/b/h/b;-><init>()V

    invoke-static {p1}, Lc/c/a/a/c/l/q;->d(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lc/c/b/h/c;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot create an EmailAuthCredential without a password or emailLink."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lc/c/b/h/c;->c:Ljava/lang/String;

    iput-object p3, p0, Lc/c/b/h/c;->d:Ljava/lang/String;

    iput-object p4, p0, Lc/c/b/h/c;->e:Ljava/lang/String;

    iput-boolean p5, p0, Lc/c/b/h/c;->f:Z

    return-void
.end method


# virtual methods
.method public final h()Lc/c/b/h/b;
    .locals 7

    new-instance v6, Lc/c/b/h/c;

    iget-object v1, p0, Lc/c/b/h/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lc/c/b/h/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lc/c/b/h/c;->d:Ljava/lang/String;

    iget-object v4, p0, Lc/c/b/h/c;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lc/c/b/h/c;->f:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/c/b/h/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lc/c/b/h/c;->b:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lc/c/b/h/c;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lc/c/b/h/c;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lc/c/b/h/c;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lc/c/b/h/c;->f:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lc/c/a/a/c/l/q;->c0(Landroid/os/Parcel;IZ)V

    .line 1
    invoke-static {p1, p2}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
