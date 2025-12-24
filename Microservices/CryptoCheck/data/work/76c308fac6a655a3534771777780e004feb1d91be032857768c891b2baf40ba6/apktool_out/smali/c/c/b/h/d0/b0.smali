.class public final Lc/c/b/h/d0/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lc/c/b/h/d0/c0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lc/c/a/a/c/l/q;->b0(Landroid/os/Parcel;)I

    move-result v1

    const/4 v3, 0x0

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v15, v13

    move-object/from16 v16, v15

    const/4 v14, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v1, :cond_2

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v17, 0xffff

    and-int v17, v4, v17

    packed-switch v17, :pswitch_data_0

    .line 2
    invoke-static {v0, v4}, Lc/c/a/a/c/l/q;->Z(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    sget-object v2, Lc/c/b/h/d0/m;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4, v2}, Lc/c/a/a/c/l/q;->n(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lc/c/b/h/d0/m;

    goto :goto_0

    :pswitch_1
    sget-object v2, Lc/c/b/h/g0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4, v2}, Lc/c/a/a/c/l/q;->n(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lc/c/b/h/g0;

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v4}, Lc/c/a/a/c/l/q;->O(Landroid/os/Parcel;I)Z

    move-result v14

    goto :goto_0

    :pswitch_3
    sget-object v2, Lc/c/b/h/d0/e0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4, v2}, Lc/c/a/a/c/l/q;->n(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lc/c/b/h/d0/e0;

    goto :goto_0

    .line 3
    :pswitch_4
    invoke-static {v0, v4}, Lc/c/a/a/c/l/q;->T(Landroid/os/Parcel;I)I

    move-result v2

    if-nez v2, :cond_0

    move-object v12, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    invoke-static {v0, v2, v4}, Lc/c/a/a/c/l/q;->z0(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v12, v2

    goto :goto_0

    .line 4
    :pswitch_5
    invoke-static {v0, v4}, Lc/c/a/a/c/l/q;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v4}, Lc/c/a/a/c/l/q;->p(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_0

    :pswitch_7
    sget-object v2, Lc/c/b/h/d0/z;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4, v2}, Lc/c/a/a/c/l/q;->r(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v4}, Lc/c/a/a/c/l/q;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :pswitch_9
    invoke-static {v0, v4}, Lc/c/a/a/c/l/q;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :pswitch_a
    sget-object v2, Lc/c/b/h/d0/z;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4, v2}, Lc/c/a/a/c/l/q;->n(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lc/c/b/h/d0/z;

    goto :goto_0

    :pswitch_b
    sget-object v2, Lc/c/a/a/f/c/a1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4, v2}, Lc/c/a/a/c/l/q;->n(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lc/c/a/a/f/c/a1;

    goto/16 :goto_0

    :cond_2
    invoke-static {v0, v1}, Lc/c/a/a/c/l/q;->v(Landroid/os/Parcel;I)V

    new-instance v0, Lc/c/b/h/d0/c0;

    move-object v4, v0

    invoke-direct/range {v4 .. v16}, Lc/c/b/h/d0/c0;-><init>(Lc/c/a/a/f/c/a1;Lc/c/b/h/d0/z;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lc/c/b/h/d0/e0;ZLc/c/b/h/g0;Lc/c/b/h/d0/m;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lc/c/b/h/d0/c0;

    return-object p1
.end method
