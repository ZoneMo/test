.class final Lcom/tencent/mm/app/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/d;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;IILandroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 251
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-object v0

    .line 256
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 273
    :pswitch_0
    if-eqz p4, :cond_0

    .line 277
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 278
    const-class v2, Lcom/tencent/mm/ui/tools/CropImageNewUI;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 279
    const-string v2, "CropImageMode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    const-string v2, "CropImage_Filter"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    const-string v2, "CropImage_OutputPath"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tencent/mm/storage/h;->ggB:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "temp.avatar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    sget-object v2, Lcom/tencent/mm/storage/h;->ggB:Ljava/lang/String;

    invoke-static {p1, p4, v1, v2, v6}, Lcom/tencent/mm/ui/tools/h;->b(Landroid/app/Activity;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_0

    .line 258
    :pswitch_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/tencent/mm/storage/h;->ggB:Ljava/lang/String;

    invoke-static {v1, p4, v2}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_0

    .line 263
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 264
    const-class v3, Lcom/tencent/mm/ui/tools/CropImageNewUI;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 265
    const-string v3, "CropImageMode"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v3, "CropImage_OutputPath"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/tencent/mm/storage/h;->ggB:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "temp.avatar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v3, "CropImage_ImgPath"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p1, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 289
    :pswitch_2
    if-eqz p4, :cond_0

    .line 293
    const-string v1, "CropImage_OutputPath"

    invoke-virtual {p4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    if-nez v1, :cond_2

    .line 295
    const-string v1, "MicroMsg.WorkerModelCallback"

    const-string v2, "crop picture failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    :cond_2
    const-string v0, "MicroMsg.WorkerModelCallback"

    const-string v2, "crop picture path %s "

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/h;->su(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/tencent/mm/n/n;)Lcom/tencent/mm/n/x;
    .locals 2
    .parameter

    .prologue
    .line 322
    new-instance v0, Lcom/tencent/mm/z/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/tencent/mm/z/i;-><init>(ILcom/tencent/mm/n/n;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-static {p1, p2, p3}, Lcom/tencent/mm/pluginsdk/model/app/u;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apq()Lcom/tencent/mm/pluginsdk/ag;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    const/16 v6, 0xb

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/tencent/mm/pluginsdk/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    const-string v1, ""

    const-string v2, ""

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/model/app/s;->a(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .line 79
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 80
    new-instance v0, Lcom/tencent/mm/z/f;

    invoke-static {p2}, Lcom/tencent/mm/model/w;->dd(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p2, p3, v1}, Lcom/tencent/mm/z/f;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 83
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apq()Lcom/tencent/mm/pluginsdk/ag;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    const/4 v3, 0x2

    const/4 v4, 0x4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-interface/range {v0 .. v7}, Lcom/tencent/mm/pluginsdk/ag;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)V

    .line 145
    :cond_0
    return-void
.end method

.method public final aE(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-static {p1, v1}, Lcom/tencent/mm/pluginsdk/model/app/l;->F(Ljava/lang/String;Z)Lcom/tencent/mm/pluginsdk/model/app/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p1, v1}, Lcom/tencent/mm/pluginsdk/model/app/l;->F(Ljava/lang/String;Z)Lcom/tencent/mm/pluginsdk/model/app/k;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_packageName:Ljava/lang/String;

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final aF(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 113
    invoke-static {p1}, Lcom/tencent/mm/pluginsdk/model/app/l;->aF(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final aG(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 167
    invoke-static {p1}, Lcom/tencent/mm/pluginsdk/model/app/l;->aG(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-static {p1, p2, p3}, Lcom/tencent/mm/pluginsdk/model/app/u;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/content/Context;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x4

    invoke-static {p1, p2, p3, v0}, Lcom/tencent/mm/ui/cx;->a(Landroid/content/Context;III)Z

    move-result v0

    return v0
.end method

.method public final bn(I)V
    .locals 5
    .parameter

    .prologue
    .line 71
    const-string v0, "MicroMsg.WorkerModelCallback"

    const-string v1, "trigger netscene sync, scene[%d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    invoke-direct {v1, p1}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 73
    return-void
.end method

.method public final d(IZ)Lcom/tencent/mm/n/x;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 157
    if-eqz p2, :cond_0

    .line 158
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ab/l;->dQ(I)Z

    .line 160
    :cond_0
    new-instance v0, Lcom/tencent/mm/ab/j;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ab/j;-><init>(I)V

    .line 161
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 162
    return-object v0
.end method

.method public final e(Landroid/app/Activity;)Z
    .locals 4
    .parameter

    .prologue
    .line 208
    invoke-static {}, Lcom/tencent/mm/compatible/g/i;->qd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-static {p1}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    .line 210
    const/4 v0, 0x0

    .line 235
    :goto_0
    return v0

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string v1, ""

    const-string v2, ""

    new-instance v3, Lcom/tencent/mm/app/l;

    invoke-direct {v3, p0, p1}, Lcom/tencent/mm/app/l;-><init>(Lcom/tencent/mm/app/k;Landroid/app/Activity;)V

    invoke-static {p1, v1, v0, v2, v3}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    .line 235
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-static {p1, p2}, Lcom/tencent/mm/pluginsdk/model/app/l;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    invoke-static {p1}, Lcom/tencent/mm/ui/MMAppMgr;->f(Landroid/app/Activity;)V

    .line 247
    return-void
.end method

.method public final g(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-static {p1, p2}, Lcom/tencent/mm/pluginsdk/model/app/l;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final nE()V
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 67
    return-void
.end method

.method public final nF()Lcom/tencent/mm/n/o;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/tencent/mm/modelvoice/y;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelvoice/y;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final nG()V
    .locals 3

    .prologue
    .line 150
    new-instance v0, Lcom/tencent/mm/c/a/hb;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/hb;-><init>()V

    .line 151
    iget-object v1, v0, Lcom/tencent/mm/c/a/hb;->bQX:Lcom/tencent/mm/c/a/hc;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tencent/mm/c/a/hc;->bQZ:Z

    .line 152
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 153
    return-void
.end method

.method public final nH()V
    .locals 3

    .prologue
    .line 172
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ver"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/tencent/mm/protocal/a;->fxr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ce;->dC(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqj()Lcom/tencent/mm/pluginsdk/model/app/t;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HE()Lcom/tencent/mm/pluginsdk/model/app/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/model/app/o;->apS()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/model/app/t;->ak(Ljava/util/List;)V

    .line 180
    return-void
.end method

.method public final nI()V
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    new-instance v1, Lcom/tencent/mm/modelsimple/aa;

    invoke-direct {v1, v0}, Lcom/tencent/mm/modelsimple/aa;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 189
    :cond_0
    return-void
.end method

.method public final nJ()V
    .locals 0

    .prologue
    .line 198
    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->nJ()V

    .line 199
    return-void
.end method

.method public final nK()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 315
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    const-string v1, "nofification_type"

    const-string v2, "talkroom_notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    return-object v0
.end method

.method public final t(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 203
    invoke-static {p1}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    invoke-static {p1}, Lcom/tencent/mm/ui/MMAppMgr;->u(Landroid/content/Context;)V

    .line 241
    return-void
.end method
