.class public Lc/c/b/h/w;
.super Lc/c/b/h/b;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/b/h/w;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/b/h/p0;

    invoke-direct {v0}, Lc/c/b/h/p0;-><init>()V

    sput-object v0, Lc/c/b/h/w;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lc/c/b/h/b;-><init>()V

    if-eqz p3, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    iput-object p1, p0, Lc/c/b/h/w;->b:Ljava/lang/String;

    iput-object p2, p0, Lc/c/b/h/w;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lc/c/b/h/w;->d:Z

    iput-object p4, p0, Lc/c/b/h/w;->e:Ljava/lang/String;

    iput-boolean p5, p0, Lc/c/b/h/w;->f:Z

    iput-object p6, p0, Lc/c/b/h/w;->g:Ljava/lang/String;

    iput-object p7, p0, Lc/c/b/h/w;->h:Ljava/lang/String;

    return-void

    .line 1
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot create PhoneAuthCredential without either verificationProof, sessionInfo, temporary proof, or enrollment ID."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 9

    new-instance v8, Lc/c/b/h/w;

    iget-object v1, p0, Lc/c/b/h/w;->b:Ljava/lang/String;

    .line 1
    iget-object v2, p0, Lc/c/b/h/w;->c:Ljava/lang/String;

    .line 2
    iget-boolean v3, p0, Lc/c/b/h/w;->d:Z

    iget-object v4, p0, Lc/c/b/h/w;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lc/c/b/h/w;->f:Z

    iget-object v6, p0, Lc/c/b/h/w;->g:Ljava/lang/String;

    iget-object v7, p0, Lc/c/b/h/w;->h:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lc/c/b/h/w;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public final h()Lc/c/b/h/b;
    .locals 1

    invoke-virtual {p0}, Lc/c/b/h/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/b/h/w;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lc/c/b/h/w;->b:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 1
    iget-object v0, p0, Lc/c/b/h/w;->c:Ljava/lang/String;

    const/4 v1, 0x2

    .line 2
    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lc/c/b/h/w;->d:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lc/c/a/a/c/l/q;->c0(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lc/c/b/h/w;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lc/c/b/h/w;->f:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lc/c/a/a/c/l/q;->c0(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lc/c/b/h/w;->g:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lc/c/b/h/w;->h:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 3
    invoke-static {p1, p2}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
