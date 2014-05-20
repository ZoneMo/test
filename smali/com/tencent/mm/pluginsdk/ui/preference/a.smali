.class public final Lcom/tencent/mm/pluginsdk/ui/preference/a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# static fields
.field private static frq:Lcom/tencent/mm/pluginsdk/ui/preference/g;


# instance fields
.field private cHU:Lcom/tencent/mm/ui/base/ch;

.field private context:Landroid/content/Context;

.field private ezT:Landroid/widget/TextView;

.field private frr:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->context:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->context:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/k;->aUq:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/tencent/mm/i;->atG:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->ezT:Landroid/widget/TextView;

    sget v0, Lcom/tencent/mm/i;->atH:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frr:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frr:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/preference/b;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/preference/b;-><init>(Lcom/tencent/mm/pluginsdk/ui/preference/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/preference/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/preference/a;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 39
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frq:Lcom/tencent/mm/pluginsdk/ui/preference/g;

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.FMessageItemView"

    const-string v1, "FMessage Args is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MicroMsg.FMessageItemView"

    const-string v1, "try to reply verify content"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frq:Lcom/tencent/mm/pluginsdk/ui/preference/g;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/preference/g;->bNl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frq:Lcom/tencent/mm/pluginsdk/ui/preference/g;

    iget v0, v0, Lcom/tencent/mm/pluginsdk/ui/preference/g;->bLN:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frq:Lcom/tencent/mm/pluginsdk/ui/preference/g;

    iget v0, v0, Lcom/tencent/mm/pluginsdk/ui/preference/g;->type:I

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frq:Lcom/tencent/mm/pluginsdk/ui/preference/g;

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/ui/preference/g;->bNl:Ljava/lang/String;

    const-string v4, "MicroMsg.FMessageItemView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "getOpCode, type = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", talker = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v1, 0x6

    :goto_2
    const-string v0, "MicroMsg.FMessageItemView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reply, final opcode = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v4, 0x1e

    invoke-virtual {v0, v4, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    new-instance v0, Lcom/tencent/mm/pluginsdk/model/j;

    sget-object v4, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frq:Lcom/tencent/mm/pluginsdk/ui/preference/g;

    iget-object v5, v4, Lcom/tencent/mm/pluginsdk/ui/preference/g;->frx:Ljava/lang/String;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/model/j;-><init>(ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->bem:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/pluginsdk/ui/preference/f;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/pluginsdk/ui/preference/f;-><init>(Lcom/tencent/mm/pluginsdk/ui/preference/a;Lcom/tencent/mm/pluginsdk/model/j;)V

    invoke-static {v1, v2, v6, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->cHU:Lcom/tencent/mm/ui/base/ch;

    goto/16 :goto_0

    :pswitch_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "MicroMsg.FMessageLogic"

    const-string v1, "isVerifyReceiver, invalid argument"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_1

    const/4 v1, 0x5

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dx()Lcom/tencent/mm/ah/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ah/f;->gI(Ljava/lang/String;)Lcom/tencent/mm/ah/e;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "MicroMsg.FMessageLogic"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isVerifyReceiver, lastRecvFmsg does not exist, talker = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget v1, v0, Lcom/tencent/mm/ah/e;->field_type:I

    if-eq v1, v6, :cond_6

    iget v0, v0, Lcom/tencent/mm/ah/e;->field_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_6
    move v0, v6

    goto :goto_4

    :pswitch_1
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dz()Lcom/tencent/mm/ah/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ah/h;->gM(Ljava/lang/String;)Lcom/tencent/mm/ah/g;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "MicroMsg.FMessageItemView"

    const-string v1, "getOpCode, last lbsMsg is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, v0, Lcom/tencent/mm/ah/g;->field_content:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/preference/a;->qQ(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_2

    :pswitch_2
    invoke-static {}, Lcom/tencent/mm/ah/k;->DA()Lcom/tencent/mm/ah/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ah/j;->gO(Ljava/lang/String;)Lcom/tencent/mm/ah/i;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "MicroMsg.FMessageItemView"

    const-string v1, "getOpCode, last shakeMsg is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, v0, Lcom/tencent/mm/ah/i;->field_content:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/preference/a;->qQ(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/tencent/mm/pluginsdk/ui/preference/g;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    sput-object p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frq:Lcom/tencent/mm/pluginsdk/ui/preference/g;

    .line 56
    return-void
.end method

.method private static qQ(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x6

    .line 229
    if-nez p0, :cond_0

    .line 230
    const-string v1, "MicroMsg.FMessageItemView"

    const-string v2, "getOpCodeFromVerify fail, xml is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_0
    :pswitch_0
    return v0

    .line 234
    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/storage/ao;->uU(Ljava/lang/String;)Lcom/tencent/mm/storage/ao;

    move-result-object v1

    .line 235
    if-nez v1, :cond_1

    .line 236
    const-string v1, "MicroMsg.FMessageItemView"

    const-string v2, "getOpCodeFromVerify fail, verify is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v1}, Lcom/tencent/mm/storage/ao;->aCN()I

    move-result v1

    .line 241
    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 246
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x1e

    const/4 v5, 0x4

    const/4 v6, 0x1

    .line 264
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-eq v0, v7, :cond_0

    .line 332
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string v0, "MicroMsg.FMessageItemView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSceneEnd, errType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->cHU:Lcom/tencent/mm/ui/base/ch;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->cHU:Lcom/tencent/mm/ui/base/ch;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ch;->dismiss()V

    .line 273
    :cond_1
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    move-object v0, p4

    .line 274
    check-cast v0, Lcom/tencent/mm/pluginsdk/model/j;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/model/j;->apI()I

    move-result v0

    .line 275
    check-cast p4, Lcom/tencent/mm/pluginsdk/model/j;

    invoke-virtual {p4}, Lcom/tencent/mm/pluginsdk/model/j;->apJ()Ljava/lang/String;

    move-result-object v1

    .line 276
    const-string v2, "MicroMsg.FMessageItemView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onSceneEnd, pre insert fmsg, opcode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", verifyContent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v2, "MicroMsg.FMessageItemView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onSceneEnd, type = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frq:Lcom/tencent/mm/pluginsdk/ui/preference/g;

    iget v4, v4, Lcom/tencent/mm/pluginsdk/ui/preference/g;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v2, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frq:Lcom/tencent/mm/pluginsdk/ui/preference/g;

    iget v2, v2, Lcom/tencent/mm/pluginsdk/ui/preference/g;->type:I

    packed-switch v2, :pswitch_data_0

    .line 308
    new-instance v2, Lcom/tencent/mm/ah/e;

    invoke-direct {v2}, Lcom/tencent/mm/ah/e;-><init>()V

    .line 309
    sget-object v3, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frq:Lcom/tencent/mm/pluginsdk/ui/preference/g;

    iget-object v3, v3, Lcom/tencent/mm/pluginsdk/ui/preference/g;->bNl:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/ah/d;->b(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/mm/ah/e;->field_createTime:J

    .line 310
    iput v6, v2, Lcom/tencent/mm/ah/e;->field_isSend:I

    .line 311
    iput-object v1, v2, Lcom/tencent/mm/ah/e;->field_msgContent:Ljava/lang/String;

    .line 312
    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frq:Lcom/tencent/mm/pluginsdk/ui/preference/g;

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/ui/preference/g;->bNl:Ljava/lang/String;

    iput-object v1, v2, Lcom/tencent/mm/ah/e;->field_talker:Ljava/lang/String;

    .line 313
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    :goto_1
    iput v0, v2, Lcom/tencent/mm/ah/e;->field_type:I

    .line 314
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dx()Lcom/tencent/mm/ah/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ah/f;->a(Lcom/tencent/mm/ah/e;)Z

    move-result v0

    .line 315
    const-string v1, "MicroMsg.FMessageItemView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSceneEnd, insert fmsg, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v7, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    goto/16 :goto_0

    .line 282
    :pswitch_0
    new-instance v0, Lcom/tencent/mm/ah/g;

    invoke-direct {v0}, Lcom/tencent/mm/ah/g;-><init>()V

    .line 283
    sget-object v2, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frq:Lcom/tencent/mm/pluginsdk/ui/preference/g;

    iget-object v2, v2, Lcom/tencent/mm/pluginsdk/ui/preference/g;->bNl:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/ah/h;->gN(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mm/ah/g;->field_createtime:J

    .line 284
    iput v6, v0, Lcom/tencent/mm/ah/g;->field_isSend:I

    .line 285
    iput-object v1, v0, Lcom/tencent/mm/ah/g;->field_content:Ljava/lang/String;

    .line 286
    const-string v1, "fmessage"

    iput-object v1, v0, Lcom/tencent/mm/ah/g;->field_talker:Ljava/lang/String;

    .line 287
    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frq:Lcom/tencent/mm/pluginsdk/ui/preference/g;

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/ui/preference/g;->bNl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/ah/g;->field_sayhiuser:Ljava/lang/String;

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mm/ah/g;->field_svrid:J

    .line 289
    iput v5, v0, Lcom/tencent/mm/ah/g;->field_status:I

    .line 290
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dz()Lcom/tencent/mm/ah/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ah/h;->a(Lcom/tencent/mm/ah/g;)Z

    goto :goto_2

    .line 295
    :pswitch_1
    new-instance v0, Lcom/tencent/mm/ah/i;

    invoke-direct {v0}, Lcom/tencent/mm/ah/i;-><init>()V

    .line 296
    sget-object v2, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frq:Lcom/tencent/mm/pluginsdk/ui/preference/g;

    iget-object v2, v2, Lcom/tencent/mm/pluginsdk/ui/preference/g;->bNl:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/ah/j;->gN(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mm/ah/i;->field_createtime:J

    .line 297
    iput v6, v0, Lcom/tencent/mm/ah/i;->field_isSend:I

    .line 298
    iput-object v1, v0, Lcom/tencent/mm/ah/i;->field_content:Ljava/lang/String;

    .line 299
    const-string v1, "fmessage"

    iput-object v1, v0, Lcom/tencent/mm/ah/i;->field_talker:Ljava/lang/String;

    .line 300
    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frq:Lcom/tencent/mm/pluginsdk/ui/preference/g;

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/ui/preference/g;->bNl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/ah/i;->field_sayhiuser:Ljava/lang/String;

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mm/ah/i;->field_svrid:J

    .line 302
    iput v5, v0, Lcom/tencent/mm/ah/i;->field_status:I

    .line 303
    invoke-static {}, Lcom/tencent/mm/ah/k;->DA()Lcom/tencent/mm/ah/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ah/j;->a(Lcom/tencent/mm/ah/i;)Z

    move-result v0

    .line 304
    const-string v1, "MicroMsg.FMessageItemView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSceneEnd, insert shake, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 313
    :cond_2
    const/4 v0, 0x3

    goto/16 :goto_1

    .line 320
    :cond_3
    if-ne p1, v5, :cond_4

    const/16 v0, -0x22

    if-ne p2, v0, :cond_4

    .line 322
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->context:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/n;->bmv:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_3
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->context:Landroid/content/Context;

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 323
    :cond_4
    if-ne p1, v5, :cond_5

    const/16 v0, -0x5e

    if-ne p2, v0, :cond_5

    .line 324
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->context:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/n;->bmw:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 326
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->context:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/n;->bxY:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final detach()V
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 168
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->cHU:Lcom/tencent/mm/ui/base/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->cHU:Lcom/tencent/mm/ui/base/ch;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ch;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->cHU:Lcom/tencent/mm/ui/base/ch;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ch;->dismiss()V

    .line 171
    :cond_0
    return-void
.end method

.method public final kG(I)V
    .locals 1
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frr:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->frr:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 260
    :cond_0
    return-void
.end method

.method public final qR(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/a;->ezT:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    return-void
.end method
