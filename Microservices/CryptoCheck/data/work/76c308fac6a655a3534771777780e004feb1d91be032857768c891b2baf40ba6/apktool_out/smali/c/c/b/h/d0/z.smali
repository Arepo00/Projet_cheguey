.class public final Lc/c/b/h/d0/z;
.super Lc/c/a/a/c/l/u/a;
.source ""

# interfaces
.implements Lc/c/b/h/b0;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/b/h/d0/z;",
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

.field public h:Z

.field public i:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/b/h/d0/y;

    invoke-direct {v0}, Lc/c/b/h/d0/y;-><init>()V

    sput-object v0, Lc/c/b/h/d0/z;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lc/c/a/a/f/c/d1;)V
    .locals 1

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    invoke-static {p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p1, Lc/c/a/a/f/c/d1;->b:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lc/c/b/h/d0/z;->b:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lc/c/a/a/f/c/d1;->e:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lc/c/a/a/c/l/q;->d(Ljava/lang/String;)Ljava/lang/String;

    iput-object v0, p0, Lc/c/b/h/d0/z;->c:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lc/c/a/a/f/c/d1;->c:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lc/c/b/h/d0/z;->d:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lc/c/a/a/f/c/d1;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lc/c/a/a/f/c/d1;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/b/h/d0/z;->e:Ljava/lang/String;

    .line 21
    :cond_1
    iget-object v0, p1, Lc/c/a/a/f/c/d1;->h:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lc/c/b/h/d0/z;->f:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lc/c/a/a/f/c/d1;->g:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lc/c/b/h/d0/z;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/c/b/h/d0/z;->h:Z

    .line 25
    iget-object p1, p1, Lc/c/a/a/f/c/d1;->f:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lc/c/b/h/d0/z;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lc/c/a/a/f/c/z0;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    invoke-static {p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lc/c/a/a/c/l/q;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 1
    iget-object v0, p1, Lc/c/a/a/f/c/z0;->b:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lc/c/a/a/c/l/q;->d(Ljava/lang/String;)Ljava/lang/String;

    iput-object v0, p0, Lc/c/b/h/d0/z;->b:Ljava/lang/String;

    iput-object p2, p0, Lc/c/b/h/d0/z;->c:Ljava/lang/String;

    .line 3
    iget-object p2, p1, Lc/c/a/a/f/c/z0;->c:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lc/c/b/h/d0/z;->f:Ljava/lang/String;

    .line 5
    iget-object p2, p1, Lc/c/a/a/f/c/z0;->e:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lc/c/b/h/d0/z;->d:Ljava/lang/String;

    .line 7
    iget-object p2, p1, Lc/c/a/a/f/c/z0;->f:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p1, Lc/c/a/a/f/c/z0;->f:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lc/c/b/h/d0/z;->e:Ljava/lang/String;

    .line 9
    :cond_1
    iget-boolean p2, p1, Lc/c/a/a/f/c/z0;->d:Z

    .line 10
    iput-boolean p2, p0, Lc/c/b/h/d0/z;->h:Z

    iput-object v0, p0, Lc/c/b/h/d0/z;->i:Ljava/lang/String;

    .line 11
    iget-object p1, p1, Lc/c/a/a/f/c/z0;->i:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lc/c/b/h/d0/z;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/c/l/u/a;-><init>()V

    iput-object p1, p0, Lc/c/b/h/d0/z;->b:Ljava/lang/String;

    iput-object p2, p0, Lc/c/b/h/d0/z;->c:Ljava/lang/String;

    iput-object p3, p0, Lc/c/b/h/d0/z;->f:Ljava/lang/String;

    iput-object p4, p0, Lc/c/b/h/d0/z;->g:Ljava/lang/String;

    iput-object p5, p0, Lc/c/b/h/d0/z;->d:Ljava/lang/String;

    iput-object p6, p0, Lc/c/b/h/d0/z;->e:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/c/b/h/d0/z;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    :cond_0
    iput-boolean p7, p0, Lc/c/b/h/d0/z;->h:Z

    iput-object p8, p0, Lc/c/b/h/d0/z;->i:Ljava/lang/String;

    return-void
.end method

.method public static h(Ljava/lang/String;)Lc/c/b/h/d0/z;
    .locals 10

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "userId"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "providerId"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "email"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "phoneNumber"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "displayName"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p0, "photoUrl"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p0, "isEmailVerified"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string p0, "rawUserInfo"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance p0, Lc/c/b/h/d0/z;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lc/c/b/h/d0/z;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "DefaultAuthUserInfo"

    const-string v1, "Failed to unpack UserInfo from JSON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lc/c/b/h/c0/b;

    invoke-direct {v0, p0}, Lc/c/b/h/c0/b;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/c/b/h/d0/z;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "userId"

    iget-object v2, p0, Lc/c/b/h/d0/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "providerId"

    iget-object v2, p0, Lc/c/b/h/d0/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "displayName"

    iget-object v2, p0, Lc/c/b/h/d0/z;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "photoUrl"

    iget-object v2, p0, Lc/c/b/h/d0/z;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "email"

    iget-object v2, p0, Lc/c/b/h/d0/z;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "phoneNumber"

    iget-object v2, p0, Lc/c/b/h/d0/z;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isEmailVerified"

    iget-boolean v2, p0, Lc/c/b/h/d0/z;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rawUserInfo"

    iget-object v2, p0, Lc/c/b/h/d0/z;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DefaultAuthUserInfo"

    const-string v2, "Failed to jsonify this object"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lc/c/b/h/c0/b;

    invoke-direct {v1, v0}, Lc/c/b/h/c0/b;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 1
    iget-object v0, p0, Lc/c/b/h/d0/z;->b:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lc/c/b/h/d0/z;->c:Ljava/lang/String;

    const/4 v1, 0x2

    .line 4
    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Lc/c/b/h/d0/z;->d:Ljava/lang/String;

    const/4 v1, 0x3

    .line 6
    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lc/c/b/h/d0/z;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 7
    iget-object v0, p0, Lc/c/b/h/d0/z;->f:Ljava/lang/String;

    const/4 v1, 0x5

    .line 8
    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 9
    iget-object v0, p0, Lc/c/b/h/d0/z;->g:Ljava/lang/String;

    const/4 v1, 0x6

    .line 10
    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 11
    iget-boolean v0, p0, Lc/c/b/h/d0/z;->h:Z

    const/4 v1, 0x7

    .line 12
    invoke-static {p1, v1, v0}, Lc/c/a/a/c/l/q;->c0(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lc/c/b/h/d0/z;->i:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {p1, v1, v0, v2}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 13
    invoke-static {p1, p2}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
