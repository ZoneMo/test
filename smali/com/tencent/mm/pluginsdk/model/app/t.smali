.class public final Lcom/tencent/mm/pluginsdk/model/app/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/model/app/x;


# instance fields
.field private fhf:Ljava/util/List;

.field private fhq:Ljava/util/Vector;

.field private volatile fhr:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhr:Z

    .line 24
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhq:Ljava/util/Vector;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhf:Ljava/util/List;

    .line 30
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->PE()Lcom/tencent/mm/pluginsdk/model/app/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/pluginsdk/model/app/c;->a(ILcom/tencent/mm/pluginsdk/model/app/x;)V

    .line 33
    return-void
.end method

.method private Pa()V
    .locals 5

    .prologue
    const/16 v0, 0x14

    const/4 v4, 0x1

    .line 69
    iget-boolean v1, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhr:Z

    if-eqz v1, :cond_0

    .line 70
    const-string v0, "MicroMsg.AppSettingService"

    const-string v1, "tryDoScene fail, doing Scene"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhq:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 75
    const-string v0, "MicroMsg.AppSettingService"

    const-string v1, "tryDoScene fail, appIdList is empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    const-string v1, "MicroMsg.AppSettingService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tryDoScene, appid list size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhq:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhq:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 81
    if-le v1, v0, :cond_2

    .line 84
    :goto_1
    iput-boolean v4, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhr:Z

    .line 85
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhf:Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhq:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    new-instance v0, Lcom/tencent/mm/pluginsdk/model/app/ai;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhf:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/tencent/mm/pluginsdk/model/app/ai;-><init>(Ljava/util/List;)V

    .line 87
    new-instance v1, Lcom/tencent/mm/pluginsdk/model/app/aa;

    invoke-direct {v1, v4, v0}, Lcom/tencent/mm/pluginsdk/model/app/aa;-><init>(ILcom/tencent/mm/pluginsdk/model/app/z;)V

    .line 88
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(IILcom/tencent/mm/pluginsdk/model/app/z;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-virtual {p3}, Lcom/tencent/mm/pluginsdk/model/app/z;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhr:Z

    .line 126
    check-cast p3, Lcom/tencent/mm/pluginsdk/model/app/ai;

    invoke-virtual {p3}, Lcom/tencent/mm/pluginsdk/model/app/ai;->apZ()Ljava/util/List;

    move-result-object v0

    .line 127
    const-string v1, "MicroMsg.AppSettingService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSceneEnd, list size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhq:Ljava/util/Vector;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhf:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeAll(Ljava/util/Collection;)Z

    .line 130
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/model/app/t;->Pa()V

    goto :goto_0
.end method

.method public final ak(Ljava/util/List;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    const-string v0, "MicroMsg.AppSettingService"

    const-string v1, "addAll list is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhq:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 57
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhq:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    :cond_3
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/model/app/t;->Pa()V

    goto :goto_0
.end method

.method public final eQ(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    const-string v0, "MicroMsg.AppSettingService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "MicroMsg.AppSettingService"

    const-string v1, "add appId is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhq:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhq:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/model/app/t;->Pa()V

    goto :goto_0
.end method

.method public final stop()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "MicroMsg.AppSettingService"

    const-string v1, "stop service"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/t;->fhq:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 116
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->PE()Lcom/tencent/mm/pluginsdk/model/app/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/pluginsdk/model/app/c;->b(ILcom/tencent/mm/pluginsdk/model/app/x;)V

    .line 117
    return-void
.end method
