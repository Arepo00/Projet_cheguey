.class public final Lc/c/a/a/f/c/n1;
.super Lc/c/a/a/c/l/u/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/a/c/l/u/a;",
        "Ljava/lang/Object<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/a/a/f/c/n1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/a/f/c/m1;

    invoke-direct {v0}, Lc/c/a/a/f/c/m1;-><init>()V

    sput-object v0, Lc/c/a/a/f/c/n1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/a/a/f/c/n1;->j:Z

    iput-boolean v0, p0, Lc/c/a/a/f/c/n1;->k:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    const-string v0, "http://localhost"

    iput-object v0, p0, Lc/c/a/a/f/c/n1;->b:Ljava/lang/String;

    iput-object p1, p0, Lc/c/a/a/f/c/n1;->d:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/a/f/c/n1;->e:Ljava/lang/String;

    iput-object p4, p0, Lc/c/a/a/f/c/n1;->i:Ljava/lang/String;

    iput-object p5, p0, Lc/c/a/a/f/c/n1;->l:Ljava/lang/String;

    iput-object p6, p0, Lc/c/a/a/f/c/n1;->o:Ljava/lang/String;

    iput-object p7, p0, Lc/c/a/a/f/c/n1;->q:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lc/c/a/a/f/c/n1;->j:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/c/a/a/f/c/n1;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/c/a/a/f/c/n1;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "idToken, accessToken and authCode cannot all be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p3}, Lc/c/a/a/c/l/q;->d(Ljava/lang/String;)Ljava/lang/String;

    iput-object p3, p0, Lc/c/a/a/f/c/n1;->f:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/c/a/a/f/c/n1;->g:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lc/c/a/a/f/c/n1;->d:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string p4, "&"

    if-nez p3, :cond_2

    const-string p3, "id_token="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lc/c/a/a/f/c/n1;->d:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p3, p0, Lc/c/a/a/f/c/n1;->e:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "access_token="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lc/c/a/a/f/c/n1;->e:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object p3, p0, Lc/c/a/a/f/c/n1;->g:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p3, "identifier="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lc/c/a/a/f/c/n1;->g:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object p3, p0, Lc/c/a/a/f/c/n1;->i:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "oauth_token_secret="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lc/c/a/a/f/c/n1;->i:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object p3, p0, Lc/c/a/a/f/c/n1;->l:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "code="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lc/c/a/a/f/c/n1;->l:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "nonce="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string p3, "providerId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lc/c/a/a/f/c/n1;->f:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/f/c/n1;->h:Ljava/lang/String;

    iput-boolean p2, p0, Lc/c/a/a/f/c/n1;->k:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lc/c/a/a/f/c/n1;->b:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lc/c/a/a/f/c/n1;->c:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lc/c/a/a/f/c/n1;->d:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lc/c/a/a/f/c/n1;->e:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lc/c/a/a/f/c/n1;->f:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lc/c/a/a/f/c/n1;->g:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lc/c/a/a/f/c/n1;->h:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lc/c/a/a/f/c/n1;->i:Ljava/lang/String;

    move v1, p9

    iput-boolean v1, v0, Lc/c/a/a/f/c/n1;->j:Z

    move v1, p10

    iput-boolean v1, v0, Lc/c/a/a/f/c/n1;->k:Z

    move-object v1, p11

    iput-object v1, v0, Lc/c/a/a/f/c/n1;->l:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lc/c/a/a/f/c/n1;->m:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lc/c/a/a/f/c/n1;->n:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lc/c/a/a/f/c/n1;->o:Ljava/lang/String;

    move/from16 v1, p15

    iput-boolean v1, v0, Lc/c/a/a/f/c/n1;->p:Z

    move-object/from16 v1, p16

    iput-object v1, v0, Lc/c/a/a/f/c/n1;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lc/c/a/a/f/c/n1;->b:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lc/c/a/a/f/c/n1;->c:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lc/c/a/a/f/c/n1;->d:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lc/c/a/a/f/c/n1;->e:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lc/c/a/a/f/c/n1;->f:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lc/c/a/a/f/c/n1;->g:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lc/c/a/a/f/c/n1;->h:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lc/c/a/a/f/c/n1;->i:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lc/c/a/a/f/c/n1;->j:Z

    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lc/c/a/a/c/l/q;->c0(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lc/c/a/a/f/c/n1;->k:Z

    const/16 v1, 0xb

    invoke-static {p1, v1, v0}, Lc/c/a/a/c/l/q;->c0(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lc/c/a/a/f/c/n1;->l:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lc/c/a/a/f/c/n1;->m:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lc/c/a/a/f/c/n1;->n:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lc/c/a/a/f/c/n1;->o:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lc/c/a/a/f/c/n1;->p:Z

    const/16 v1, 0x10

    invoke-static {p1, v1, v0}, Lc/c/a/a/c/l/q;->c0(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lc/c/a/a/f/c/n1;->q:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 1
    invoke-static {p1, p2}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
