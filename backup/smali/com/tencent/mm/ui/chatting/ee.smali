.class final Lcom/tencent/mm/ui/chatting/ee;
.super Lcom/tencent/mm/ui/chatting/ce;
.source "SourceFile"


# instance fields
.field private cyn:Lcom/tencent/mm/n/m;

.field private gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ce;-><init>(I)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ee;)Lcom/tencent/mm/n/m;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ee;->cyn:Lcom/tencent/mm/n/m;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/ee;)Lcom/tencent/mm/n/m;
    .locals 1
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ee;->cyn:Lcom/tencent/mm/n/m;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/chatting/ee;)Lcom/tencent/mm/ui/chatting/ChattingUI;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ee;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/mm/ui/chatting/kx;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/cf;

    iget v0, v0, Lcom/tencent/mm/ui/chatting/cf;->type:I

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ee;->dws:I

    if-eq v0, v1, :cond_1

    .line 52
    :cond_0
    new-instance p2, Lcom/tencent/mm/ui/chatting/cz;

    const v0, 0x7f03009c

    invoke-direct {p2, p1, v0}, Lcom/tencent/mm/ui/chatting/cz;-><init>(Landroid/view/LayoutInflater;I)V

    .line 53
    new-instance v0, Lcom/tencent/mm/ui/chatting/kx;

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ee;->dws:I

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/chatting/kx;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/chatting/kx;->av(Landroid/view/View;)Lcom/tencent/mm/ui/chatting/kx;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    :cond_1
    return-object p2
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/cf;ILcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 61
    check-cast p1, Lcom/tencent/mm/ui/chatting/kx;

    .line 62
    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/ee;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    .line 64
    iget-object v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    .line 65
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kx;->cMS:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 66
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kx;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kx;->cMS:Landroid/widget/ImageView;

    new-instance v2, Lcom/tencent/mm/ui/chatting/kk;

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kx;->cMS:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kx;->cMS:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 72
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HD()Lcom/tencent/mm/pluginsdk/model/app/r;

    move-result-object v0

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/model/app/r;->bt(J)Lcom/tencent/mm/j/a;

    move-result-object v0

    .line 73
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->sT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 78
    invoke-static {v1}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v0

    move-object v6, v0

    .line 81
    :goto_0
    invoke-static {v1}, Lcom/tencent/mm/plugin/voicereminder/a/k;->pl(Ljava/lang/String;)Lcom/tencent/mm/plugin/voicereminder/a/k;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_2

    iget v0, v1, Lcom/tencent/mm/plugin/voicereminder/a/k;->ePe:I

    if-eqz v0, :cond_2

    .line 86
    :try_start_0
    iget v0, v1, Lcom/tencent/mm/plugin/voicereminder/a/k;->ePe:I

    invoke-static {p3, v0}, Lcom/tencent/mm/pluginsdk/e/e;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 87
    const-string v0, ""

    .line 88
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 89
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    array-length v3, v2

    if-le v3, v8, :cond_0

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_0
    if-eqz v6, :cond_1

    iget-object v2, v6, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v6, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_1
    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/kx;->dkR:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_2
    :goto_1
    const-string v0, "MicroMsg.ChattingItemVoiceRemindRemind"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content remind "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, v1, Lcom/tencent/mm/plugin/voicereminder/a/k;->ePk:I

    if-lez v0, :cond_3

    .line 110
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lcom/tencent/mm/plugin/voicereminder/a/k;->ePk:I

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/ap;->ae(Ljava/lang/String;I)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 112
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/plugin/voicereminder/a/y;->gY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v2, v9}, Lcom/tencent/mm/plugin/voicereminder/a/n;->B(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/tencent/mm/plugin/voicereminder/a/n;->B(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v9}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    invoke-virtual {p4, v2}, Lcom/tencent/mm/storage/ak;->uN(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p4}, Lcom/tencent/mm/storage/ap;->a(JLcom/tencent/mm/storage/ak;)V

    .line 127
    :cond_3
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v0, v1, Lcom/tencent/mm/plugin/voicereminder/a/k;->cgE:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/tencent/mm/plugin/voicereminder/a/k;->cgE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, v1, Lcom/tencent/mm/plugin/voicereminder/a/k;->cgC:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ee;->cyn:Lcom/tencent/mm/n/m;

    if-nez v0, :cond_4

    .line 129
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/plugin/voicereminder/a/y;->gY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1, v9}, Lcom/tencent/mm/plugin/voicereminder/a/n;->B(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    invoke-virtual {p4, v1}, Lcom/tencent/mm/storage/ak;->uN(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p4}, Lcom/tencent/mm/storage/ap;->a(JLcom/tencent/mm/storage/ak;)V

    .line 135
    const-string v1, "MicroMsg.ChattingItemVoiceRemindRemind"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content.attachid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    iget v3, v6, Lcom/tencent/mm/j/b;->sdkVer:I

    iget-object v4, v6, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    iget-object v5, v6, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    iget v6, v6, Lcom/tencent/mm/j/b;->cgC:I

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/pluginsdk/model/app/s;->b(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;I)Lcom/tencent/mm/pluginsdk/model/app/a;

    move-result-object v0

    .line 137
    const-string v1, "MicroMsg.ChattingItemVoiceRemindRemind"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ainfo.field_mediaSvrId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/model/app/a;->field_mediaSvrId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, v0, Lcom/tencent/mm/pluginsdk/model/app/a;->field_mediaSvrId:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 140
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    const/16 v2, 0xdd

    new-instance v3, Lcom/tencent/mm/ui/chatting/ef;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/chatting/ef;-><init>(Lcom/tencent/mm/ui/chatting/ee;)V

    iput-object v3, p0, Lcom/tencent/mm/ui/chatting/ee;->cyn:Lcom/tencent/mm/n/m;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 155
    const-string v1, "MicroMsg.ChattingItemVoiceRemindRemind"

    const-string v2, "doscene"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v1, Lcom/tencent/mm/pluginsdk/model/app/ab;

    invoke-direct {v1, v0}, Lcom/tencent/mm/pluginsdk/model/app/ab;-><init>(Lcom/tencent/mm/pluginsdk/model/app/a;)V

    .line 157
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 164
    :cond_4
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kx;->gRe:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/eg;

    invoke-direct {v1, p0, p4, p2}, Lcom/tencent/mm/ui/chatting/eg;-><init>(Lcom/tencent/mm/ui/chatting/ee;Lcom/tencent/mm/storage/ak;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ee;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/es;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/v;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ee;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/es;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/v;->aIO()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_6

    move v0, v8

    :goto_2
    if-eqz v0, :cond_7

    .line 180
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kx;->gRe:Landroid/widget/ImageView;

    const v1, 0x7f020573

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    :goto_3
    iget-object v8, p1, Lcom/tencent/mm/ui/chatting/kx;->gki:Landroid/view/View;

    new-instance v0, Lcom/tencent/mm/ui/chatting/kk;

    iget-boolean v2, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    move-object v1, p4

    move v3, p2

    move-object v4, v7

    move v5, v9

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IC)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kx;->gki:Landroid/view/View;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 188
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kx;->gki:Landroid/view/View;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 190
    :cond_5
    return-void

    :cond_6
    move v0, v9

    .line 179
    goto :goto_2

    .line 182
    :cond_7
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kx;->gRe:Landroid/widget/ImageView;

    const v1, 0x7f020577

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_8
    move-object v6, v7

    goto/16 :goto_0
.end method

.method public final a(Landroid/view/ContextMenu;Landroid/view/View;Lcom/tencent/mm/storage/ak;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x0

    .line 202
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/kk;

    .line 203
    iget v0, v0, Lcom/tencent/mm/ui/chatting/kk;->position:I

    .line 204
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ee;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->at(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/model/app/s;->qs(Ljava/lang/String;)I

    move-result v1

    .line 205
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ee;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->at(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v2

    .line 206
    iget v3, v2, Lcom/tencent/mm/j/b;->cgC:I

    if-lez v3, :cond_0

    iget v2, v2, Lcom/tencent/mm/j/b;->cgC:I

    if-lez v2, :cond_1

    if-lt v1, v6, :cond_1

    .line 210
    :cond_0
    const/16 v1, 0x6f

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ee;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f0701ba

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ee;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJJ()Z

    move-result v1

    if-nez v1, :cond_2

    .line 213
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ee;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v2, 0x7f0701da

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v6, v5, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 216
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 247
    :goto_0
    return v4

    .line 225
    :sswitch_0
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->sT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    const/4 v0, 0x0

    .line 228
    if-eqz v1, :cond_0

    .line 229
    invoke-static {v1}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v0

    .line 231
    :cond_0
    if-eqz v0, :cond_1

    .line 232
    iget-object v0, v0, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/app/s;->qr(Ljava/lang/String;)V

    .line 234
    :cond_1
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mm/model/bv;->q(J)I

    goto :goto_0

    .line 239
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    const-string v1, "Retr_Msg_content"

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->at(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v1, "Retr_Msg_Type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    const-string v1, "Retr_Msg_Id"

    iget-wide v2, p3, Lcom/tencent/mm/storage/ak;->field_msgId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 243
    invoke-virtual {p2, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 222
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6f -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Landroid/view/View;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    const/4 v0, 0x1

    return v0
.end method
