.class public abstract Lc/c/b/h/c0/a/o0;
.super Lc/c/a/a/f/c/a;
.source ""

# interfaces
.implements Lc/c/b/h/c0/a/n0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks"

    invoke-direct {p0, v0}, Lc/c/a/a/f/c/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7

    const/4 p3, 0x2

    const-string p4, "Unexpected response type: "

    const/16 v0, 0x25

    const/4 v1, 0x0

    const/16 v2, 0x8

    const-string v3, "Unexpected response type "

    const/16 v4, 0x24

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    return v5

    :pswitch_0
    sget-object p1, Lc/c/a/a/f/c/v0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/c/a/a/f/c/i0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/c/a/a/f/c/v0;

    move-object p2, p0

    check-cast p2, Lc/c/b/h/c0/a/w0;

    .line 1
    iget-object p2, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iput-object p1, p2, Lc/c/b/h/c0/a/u0;->s:Lc/c/a/a/f/c/v0;

    const-string p1, "REQUIRES_SECOND_FACTOR_AUTH"

    invoke-static {p1}, Lc/c/a/a/c/l/q;->p0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 2
    iput-boolean v6, p2, Lc/c/b/h/c0/a/u0;->v:Z

    iget-object p2, p2, Lc/c/b/h/c0/a/u0;->g:Lc/c/b/h/c0/a/b1;

    invoke-virtual {p2, v1, p1}, Lc/c/b/h/c0/a/b1;->a(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_1

    .line 3
    :pswitch_1
    sget-object p1, Lc/c/a/a/f/c/t0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/c/a/a/f/c/i0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/c/a/a/f/c/t0;

    move-object p2, p0

    check-cast p2, Lc/c/b/h/c0/a/w0;

    .line 4
    iget-object p3, p1, Lc/c/a/a/f/c/t0;->b:Lcom/google/android/gms/common/api/Status;

    .line 5
    iget-object p4, p1, Lc/c/a/a/f/c/t0;->c:Lc/c/b/h/g0;

    .line 6
    iget-object v0, p1, Lc/c/a/a/f/c/t0;->d:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lc/c/a/a/f/c/t0;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {p2, p3, p4, v0, p1}, Lc/c/b/h/c0/a/w0;->t(Lcom/google/android/gms/common/api/Status;Lc/c/b/h/b;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9
    :pswitch_2
    move-object p1, p0

    check-cast p1, Lc/c/b/h/c0/a/w0;

    .line 10
    iget-object p2, p1, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p2, p2, Lc/c/b/h/c0/a/u0;->a:I

    const/16 p3, 0x9

    if-ne p2, p3, :cond_0

    const/4 v5, 0x1

    :cond_0
    iget-object p2, p1, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p2, p2, Lc/c/b/h/c0/a/u0;->a:I

    invoke-static {v4, v3, p2, v5}, Lc/a/a/a/a;->f(ILjava/lang/String;IZ)V

    iget-object p1, p1, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    invoke-static {p1}, Lc/c/b/h/c0/a/u0;->g(Lc/c/b/h/c0/a/u0;)V

    goto/16 :goto_1

    .line 11
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/c/a/a/f/c/i0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p4, Lc/c/b/h/w;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lc/c/a/a/f/c/i0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lc/c/b/h/w;

    move-object p4, p0

    check-cast p4, Lc/c/b/h/c0/a/w0;

    .line 12
    iget-object v0, p4, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget v0, v0, Lc/c/b/h/c0/a/u0;->a:I

    if-ne v0, p3, :cond_1

    const/4 v5, 0x1

    :cond_1
    iget-object p3, p4, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p3, p3, Lc/c/b/h/c0/a/u0;->a:I

    invoke-static {v4, v3, p3, v5}, Lc/a/a/a/a;->f(ILjava/lang/String;IZ)V

    invoke-virtual {p4, p1, p2, v1, v1}, Lc/c/b/h/c0/a/w0;->t(Lcom/google/android/gms/common/api/Status;Lc/c/b/h/b;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 13
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lc/c/b/h/c0/a/w0;

    .line 14
    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p3, p3, Lc/c/b/h/c0/a/u0;->a:I

    if-ne p3, v2, :cond_2

    const/4 v5, 0x1

    :cond_2
    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p3, p3, Lc/c/b/h/c0/a/u0;->a:I

    invoke-static {v4, v3, p3, v5}, Lc/a/a/a/a;->f(ILjava/lang/String;IZ)V

    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iput-object p1, p3, Lc/c/b/h/c0/a/u0;->o:Ljava/lang/String;

    .line 15
    iput-boolean v6, p3, Lc/c/b/h/c0/a/u0;->v:Z

    .line 16
    new-instance p3, Lc/c/b/h/c0/a/x0;

    invoke-direct {p3, p1}, Lc/c/b/h/c0/a/x0;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object p1, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget-object p1, p1, Lc/c/b/h/c0/a/u0;->i:Ljava/util/concurrent/Executor;

    new-instance p4, Lc/c/b/h/c0/a/z0;

    invoke-direct {p4, p2, p3}, Lc/c/b/h/c0/a/z0;-><init>(Lc/c/b/h/c0/a/w0;Lc/c/b/h/c0/a/c1;)V

    invoke-interface {p1, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 18
    :pswitch_5
    sget-object p1, Lc/c/b/h/w;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/c/a/a/f/c/i0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/c/b/h/w;

    move-object p2, p0

    check-cast p2, Lc/c/b/h/c0/a/w0;

    .line 19
    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p3, p3, Lc/c/b/h/c0/a/u0;->a:I

    if-ne p3, v2, :cond_3

    const/4 v5, 0x1

    :cond_3
    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p3, p3, Lc/c/b/h/c0/a/u0;->a:I

    invoke-static {v4, v3, p3, v5}, Lc/a/a/a/a;->f(ILjava/lang/String;IZ)V

    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    .line 20
    iput-boolean v6, p3, Lc/c/b/h/c0/a/u0;->v:Z

    .line 21
    new-instance p3, Lc/c/b/h/c0/a/y0;

    invoke-direct {p3, p1}, Lc/c/b/h/c0/a/y0;-><init>(Lc/c/b/h/w;)V

    .line 22
    iget-object p1, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget-object p1, p1, Lc/c/b/h/c0/a/u0;->i:Ljava/util/concurrent/Executor;

    new-instance p4, Lc/c/b/h/c0/a/z0;

    invoke-direct {p4, p2, p3}, Lc/c/b/h/c0/a/z0;-><init>(Lc/c/b/h/c0/a/w0;Lc/c/b/h/c0/a/c1;)V

    invoke-interface {p1, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 23
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lc/c/b/h/c0/a/w0;

    .line 24
    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p3, p3, Lc/c/b/h/c0/a/u0;->a:I

    if-ne p3, v2, :cond_4

    const/4 v5, 0x1

    :cond_4
    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p3, p3, Lc/c/b/h/c0/a/u0;->a:I

    invoke-static {v4, v3, p3, v5}, Lc/a/a/a/a;->f(ILjava/lang/String;IZ)V

    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iput-object p1, p3, Lc/c/b/h/c0/a/u0;->o:Ljava/lang/String;

    new-instance p3, Lc/c/b/h/c0/a/v0;

    invoke-direct {p3, p1}, Lc/c/b/h/c0/a/v0;-><init>(Ljava/lang/String;)V

    .line 25
    iget-object p1, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget-object p1, p1, Lc/c/b/h/c0/a/u0;->i:Ljava/util/concurrent/Executor;

    new-instance p4, Lc/c/b/h/c0/a/z0;

    invoke-direct {p4, p2, p3}, Lc/c/b/h/c0/a/z0;-><init>(Lc/c/b/h/c0/a/w0;Lc/c/b/h/c0/a/c1;)V

    invoke-interface {p1, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 26
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lc/c/b/h/c0/a/w0;

    .line 27
    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p3, p3, Lc/c/b/h/c0/a/u0;->a:I

    const/4 p4, 0x7

    if-ne p3, p4, :cond_5

    const/4 v5, 0x1

    :cond_5
    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p3, p3, Lc/c/b/h/c0/a/u0;->a:I

    invoke-static {v4, v3, p3, v5}, Lc/a/a/a/a;->f(ILjava/lang/String;IZ)V

    iget-object p2, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iput-object p1, p2, Lc/c/b/h/c0/a/u0;->n:Ljava/lang/String;

    invoke-static {p2}, Lc/c/b/h/c0/a/u0;->g(Lc/c/b/h/c0/a/u0;)V

    goto/16 :goto_1

    .line 28
    :pswitch_8
    move-object p1, p0

    check-cast p1, Lc/c/b/h/c0/a/w0;

    .line 29
    iget-object p2, p1, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p2, p2, Lc/c/b/h/c0/a/u0;->a:I

    const/4 p3, 0x6

    if-ne p2, p3, :cond_6

    const/4 v5, 0x1

    :cond_6
    iget-object p2, p1, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p2, p2, Lc/c/b/h/c0/a/u0;->a:I

    invoke-static {v4, v3, p2, v5}, Lc/a/a/a/a;->f(ILjava/lang/String;IZ)V

    iget-object p1, p1, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    invoke-static {p1}, Lc/c/b/h/c0/a/u0;->g(Lc/c/b/h/c0/a/u0;)V

    goto/16 :goto_1

    .line 30
    :pswitch_9
    move-object p1, p0

    check-cast p1, Lc/c/b/h/c0/a/w0;

    .line 31
    iget-object p2, p1, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p2, p2, Lc/c/b/h/c0/a/u0;->a:I

    const/4 p3, 0x5

    if-ne p2, p3, :cond_7

    const/4 v5, 0x1

    :cond_7
    iget-object p2, p1, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p2, p2, Lc/c/b/h/c0/a/u0;->a:I

    invoke-static {v4, v3, p2, v5}, Lc/a/a/a/a;->f(ILjava/lang/String;IZ)V

    iget-object p1, p1, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    invoke-static {p1}, Lc/c/b/h/c0/a/u0;->g(Lc/c/b/h/c0/a/u0;)V

    goto/16 :goto_1

    .line 32
    :pswitch_a
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/c/a/a/f/c/i0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    move-object p2, p0

    check-cast p2, Lc/c/b/h/c0/a/w0;

    .line 33
    iget-object p3, p1, Lcom/google/android/gms/common/api/Status;->d:Ljava/lang/String;

    if-eqz p3, :cond_11

    const-string p4, "MISSING_MFA_PENDING_CREDENTIAL"

    .line 34
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_8

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0x42b9

    .line 35
    invoke-direct {p1, p3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string p4, "MISSING_MFA_ENROLLMENT_ID"

    .line 36
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_9

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0x42ba

    .line 37
    invoke-direct {p1, p3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string p4, "INVALID_MFA_PENDING_CREDENTIAL"

    .line 38
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_a

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0x42bb

    .line 39
    invoke-direct {p1, p3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string p4, "MFA_ENROLLMENT_NOT_FOUND"

    .line 40
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_b

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0x42bc

    .line 41
    invoke-direct {p1, p3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_b
    const-string p4, "ADMIN_ONLY_OPERATION"

    .line 42
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_c

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0x42bd

    .line 43
    invoke-direct {p1, p3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_c
    const-string p4, "UNVERIFIED_EMAIL"

    .line 44
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_d

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0x42be

    .line 45
    invoke-direct {p1, p3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_d
    const-string p4, "SECOND_FACTOR_EXISTS"

    .line 46
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_e

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0x42bf

    .line 47
    invoke-direct {p1, p3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_e
    const-string p4, "SECOND_FACTOR_LIMIT_EXCEEDED"

    .line 48
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_f

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0x42c0

    .line 49
    invoke-direct {p1, p3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_f
    const-string p4, "UNSUPPORTED_FIRST_FACTOR"

    .line 50
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_10

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0x42c1

    .line 51
    invoke-direct {p1, p3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_10
    const-string p4, "EMAIL_CHANGE_NEEDS_VERIFICATION"

    .line 52
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_11

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0x42c2

    .line 53
    invoke-direct {p1, p3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 54
    :cond_11
    :goto_0
    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p4, p3, Lc/c/b/h/c0/a/u0;->a:I

    if-ne p4, v2, :cond_12

    .line 55
    iput-boolean v6, p3, Lc/c/b/h/c0/a/u0;->v:Z

    .line 56
    new-instance p3, Lc/c/b/h/c0/a/a1;

    invoke-direct {p3, p1}, Lc/c/b/h/c0/a/a1;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 57
    iget-object p1, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget-object p1, p1, Lc/c/b/h/c0/a/u0;->i:Ljava/util/concurrent/Executor;

    new-instance p4, Lc/c/b/h/c0/a/z0;

    invoke-direct {p4, p2, p3}, Lc/c/b/h/c0/a/z0;-><init>(Lc/c/b/h/c0/a/w0;Lc/c/b/h/c0/a/c1;)V

    invoke-interface {p1, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 58
    :cond_12
    iget-object p3, p3, Lc/c/b/h/c0/a/u0;->f:Lc/c/b/h/d0/f;

    if-eqz p3, :cond_13

    invoke-interface {p3, p1}, Lc/c/b/h/d0/f;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 59
    :cond_13
    iget-object p2, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    .line 60
    iput-boolean v6, p2, Lc/c/b/h/c0/a/u0;->v:Z

    iget-object p2, p2, Lc/c/b/h/c0/a/u0;->g:Lc/c/b/h/c0/a/b1;

    invoke-virtual {p2, v1, p1}, Lc/c/b/h/c0/a/b1;->a(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_1

    .line 61
    :pswitch_b
    sget-object p1, Lc/c/a/a/f/c/i1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/c/a/a/f/c/i0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/c/a/a/f/c/i1;

    move-object p2, p0

    check-cast p2, Lc/c/b/h/c0/a/w0;

    .line 62
    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p3, p3, Lc/c/b/h/c0/a/u0;->a:I

    const/4 p4, 0x4

    if-ne p3, p4, :cond_14

    const/4 v5, 0x1

    :cond_14
    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p3, p3, Lc/c/b/h/c0/a/u0;->a:I

    invoke-static {v4, v3, p3, v5}, Lc/a/a/a/a;->f(ILjava/lang/String;IZ)V

    iget-object p2, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iput-object p1, p2, Lc/c/b/h/c0/a/u0;->m:Lc/c/a/a/f/c/i1;

    invoke-static {p2}, Lc/c/b/h/c0/a/u0;->g(Lc/c/b/h/c0/a/u0;)V

    goto :goto_1

    .line 63
    :pswitch_c
    sget-object p1, Lc/c/a/a/f/c/x0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/c/a/a/f/c/i0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/c/a/a/f/c/x0;

    move-object p2, p0

    check-cast p2, Lc/c/b/h/c0/a/w0;

    .line 64
    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p3, p3, Lc/c/b/h/c0/a/u0;->a:I

    const/4 p4, 0x3

    if-ne p3, p4, :cond_15

    const/4 v5, 0x1

    :cond_15
    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p3, p3, Lc/c/b/h/c0/a/u0;->a:I

    invoke-static {v4, v3, p3, v5}, Lc/a/a/a/a;->f(ILjava/lang/String;IZ)V

    iget-object p2, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iput-object p1, p2, Lc/c/b/h/c0/a/u0;->l:Lc/c/a/a/f/c/x0;

    invoke-static {p2}, Lc/c/b/h/c0/a/u0;->g(Lc/c/b/h/c0/a/u0;)V

    goto :goto_1

    .line 65
    :pswitch_d
    sget-object p1, Lc/c/a/a/f/c/a1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/c/a/a/f/c/i0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/c/a/a/f/c/a1;

    sget-object v1, Lc/c/a/a/f/c/z0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lc/c/a/a/f/c/i0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lc/c/a/a/f/c/z0;

    move-object v1, p0

    check-cast v1, Lc/c/b/h/c0/a/w0;

    .line 66
    iget-object v2, v1, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget v2, v2, Lc/c/b/h/c0/a/u0;->a:I

    if-ne v2, p3, :cond_16

    const/4 v5, 0x1

    :cond_16
    iget-object p3, v1, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p3, p3, Lc/c/b/h/c0/a/u0;->a:I

    invoke-static {v0, p4, p3, v5}, Lc/a/a/a/a;->f(ILjava/lang/String;IZ)V

    iget-object p3, v1, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iput-object p1, p3, Lc/c/b/h/c0/a/u0;->j:Lc/c/a/a/f/c/a1;

    iput-object p2, p3, Lc/c/b/h/c0/a/u0;->k:Lc/c/a/a/f/c/z0;

    invoke-static {p3}, Lc/c/b/h/c0/a/u0;->g(Lc/c/b/h/c0/a/u0;)V

    goto :goto_1

    .line 67
    :pswitch_e
    sget-object p1, Lc/c/a/a/f/c/a1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/c/a/a/f/c/i0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/c/a/a/f/c/a1;

    move-object p2, p0

    check-cast p2, Lc/c/b/h/c0/a/w0;

    .line 68
    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p3, p3, Lc/c/b/h/c0/a/u0;->a:I

    if-ne p3, v6, :cond_17

    const/4 v5, 0x1

    :cond_17
    iget-object p3, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iget p3, p3, Lc/c/b/h/c0/a/u0;->a:I

    invoke-static {v0, p4, p3, v5}, Lc/a/a/a/a;->f(ILjava/lang/String;IZ)V

    iget-object p2, p2, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iput-object p1, p2, Lc/c/b/h/c0/a/u0;->j:Lc/c/a/a/f/c/a1;

    invoke-static {p2}, Lc/c/b/h/c0/a/u0;->g(Lc/c/b/h/c0/a/u0;)V

    :goto_1
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
