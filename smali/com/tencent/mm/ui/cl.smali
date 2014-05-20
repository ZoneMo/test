.class public final Lcom/tencent/mm/ui/cl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static cIr:Landroid/app/ProgressDialog;

.field static gof:Lcom/tencent/mm/ui/applet/SecurityImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/tencent/mm/ui/cl;->gof:Lcom/tencent/mm/ui/applet/SecurityImage;

    .line 49
    sput-object v0, Lcom/tencent/mm/ui/cl;->cIr:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static a(Landroid/app/Activity;IILandroid/content/Intent;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const v7, 0x7f07019c

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0709bb

    .line 148
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 249
    :goto_0
    return-object v0

    .line 152
    :cond_0
    const-string v1, "MicroMsg.MMErrorProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "errType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 160
    :sswitch_0
    const-string v0, "MicroMsg.MMErrorProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "account expired="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/tencent/mm/ui/cq;

    invoke-direct {v0, p3, p0}, Lcom/tencent/mm/ui/cq;-><init>(Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-static {p0, v7, v4, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    goto :goto_0

    .line 177
    :sswitch_1
    const-string v0, "MicroMsg.MMErrorProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "account expired="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->reset()V

    .line 179
    invoke-static {}, Lcom/tencent/mm/model/be;->uH()V

    .line 182
    new-instance v0, Lcom/tencent/mm/c/a/dg;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/dg;-><init>()V

    .line 183
    iget-object v1, v0, Lcom/tencent/mm/c/a/dg;->bOn:Lcom/tencent/mm/c/a/dh;

    iput v5, v1, Lcom/tencent/mm/c/a/dh;->status:I

    .line 184
    iget-object v1, v0, Lcom/tencent/mm/c/a/dg;->bOn:Lcom/tencent/mm/c/a/dh;

    iput v6, v1, Lcom/tencent/mm/c/a/dh;->bOo:I

    .line 185
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 187
    invoke-static {}, Lcom/tencent/mm/protocal/j;->awH()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f07019d

    invoke-static {p0, v0}, Lcom/tencent/mm/an/a;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/cr;

    invoke-direct {v2, p3, p0}, Lcom/tencent/mm/ui/cr;-><init>(Landroid/content/Intent;Landroid/app/Activity;)V

    new-instance v3, Lcom/tencent/mm/ui/cs;

    invoke-direct {v3, p3, p0}, Lcom/tencent/mm/ui/cs;-><init>(Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/mm/protocal/j;->awH()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 213
    :sswitch_2
    const-string v0, "MicroMsg.MMErrorProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "account expired="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const v0, 0x7f070188

    new-instance v1, Lcom/tencent/mm/ui/ct;

    invoke-direct {v1, p3, p0}, Lcom/tencent/mm/ui/ct;-><init>(Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-static {p0, v0, v4, v1}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    goto/16 :goto_0

    .line 229
    :sswitch_3
    const-string v0, "MicroMsg.MMErrorProcessor"

    const-string v1, "alpha need whitelist : [%s]"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p4, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-static {p4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 231
    :cond_2
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/cu;

    invoke-direct {v1, p3, p0}, Lcom/tencent/mm/ui/cu;-><init>(Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-static {p0, p4, v0, v1}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    goto/16 :goto_0

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        -0xcd -> :sswitch_0
        -0x8c -> :sswitch_3
        -0x64 -> :sswitch_1
        -0x4b -> :sswitch_2
        -0x48 -> :sswitch_0
        -0x9 -> :sswitch_0
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Ljava/lang/Runnable;Lcom/tencent/mm/ui/MMActivity;IILandroid/content/Intent;)Lcom/tencent/mm/ui/base/x;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    const-string v1, "MicroMsg.MMErrorProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "errType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/16 v1, -0x64

    if-ne p3, v1, :cond_0

    .line 72
    const-string v0, "MicroMsg.MMErrorProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "account expired="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/tencent/mm/model/be;->uH()V

    .line 76
    new-instance v0, Lcom/tencent/mm/c/a/dg;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/dg;-><init>()V

    .line 77
    iget-object v1, v0, Lcom/tencent/mm/c/a/dg;->bOn:Lcom/tencent/mm/c/a/dh;

    const/4 v2, 0x0

    iput v2, v1, Lcom/tencent/mm/c/a/dh;->status:I

    .line 78
    iget-object v1, v0, Lcom/tencent/mm/c/a/dg;->bOn:Lcom/tencent/mm/c/a/dh;

    const/4 v2, 0x1

    iput v2, v1, Lcom/tencent/mm/c/a/dh;->bOo:I

    .line 79
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 81
    invoke-virtual {p1}, Lcom/tencent/mm/ui/MMActivity;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/protocal/j;->awH()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/tencent/mm/ui/MMActivity;->aal()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f07019d

    invoke-static {v0, v2}, Lcom/tencent/mm/an/a;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Lcom/tencent/mm/ui/MMActivity;->aal()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0709bb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/cm;

    invoke-direct {v3, p4, p0, p1}, Lcom/tencent/mm/ui/cm;-><init>(Landroid/content/Intent;Ljava/lang/Runnable;Lcom/tencent/mm/ui/MMActivity;)V

    new-instance v4, Lcom/tencent/mm/ui/cp;

    invoke-direct {v4, p4, p0, p1}, Lcom/tencent/mm/ui/cp;-><init>(Landroid/content/Intent;Ljava/lang/Runnable;Lcom/tencent/mm/ui/MMActivity;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/protocal/j;->awH()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;II)Z
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, -0x1

    const/4 v7, 0x4

    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 255
    const-string v2, "MicroMsg.MMErrorProcessor"

    const-string v3, "updateRequired [%d,%d] current version:%d  channel:%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    sget v5, Lcom/tencent/mm/protocal/a;->fxr:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x3

    sget v6, Lcom/tencent/mm/sdk/platformtools/j;->bKo:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    if-eq p1, v7, :cond_0

    .line 334
    :goto_0
    return v0

    .line 261
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 292
    :pswitch_0
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "system_config_prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 293
    const-string v3, "recomended_update_ignore"

    invoke-interface {v2, v3, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 295
    const-string v4, "MicroMsg.MMErrorProcessor"

    const-string v5, "updateRequired last:%d  now:%d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/au;->M(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    cmp-long v0, v2, v10

    if-eqz v0, :cond_1

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/au;->M(J)J

    move-result-wide v2

    const-wide/32 v4, 0x15180

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    move v0, v1

    .line 297
    goto :goto_0

    .line 264
    :pswitch_1
    new-instance v0, Lcom/tencent/mm/ui/cv;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/cv;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/tencent/mm/sandbox/updater/Updater;->b(Landroid/content/Context;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/sandbox/updater/Updater;

    move-result-object v0

    .line 273
    new-instance v2, Lcom/tencent/mm/ui/cw;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/cw;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sandbox/updater/Updater;->lA(I)V

    move v0, v1

    .line 287
    goto :goto_0

    .line 300
    :cond_1
    new-instance v0, Lcom/tencent/mm/ui/cn;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/cn;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/tencent/mm/sandbox/updater/Updater;->b(Landroid/content/Context;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/sandbox/updater/Updater;

    move-result-object v0

    .line 311
    new-instance v2, Lcom/tencent/mm/ui/co;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/co;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v9}, Lcom/tencent/mm/sandbox/updater/Updater;->lA(I)V

    move v0, v1

    .line 328
    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static aFn()Lcom/tencent/mm/ui/base/x;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public static bc(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, -0x6

    if-ne p1, v0, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
