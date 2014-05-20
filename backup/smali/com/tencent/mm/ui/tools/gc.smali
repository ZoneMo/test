.class final Lcom/tencent/mm/ui/tools/gc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public hmM:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

.field public hmN:Lcom/tencent/mm/protocal/GeneralControlWrapper;

.field public hmO:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Lcom/tencent/mm/protocal/GeneralControlWrapper;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/gc;->hmM:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    .line 211
    iput-object p2, p0, Lcom/tencent/mm/ui/tools/gc;->hmN:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    .line 212
    iput-object p3, p0, Lcom/tencent/mm/ui/tools/gc;->hmO:Ljava/util/ArrayList;

    .line 213
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    const-string v1, "Permission: jsPerm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gc;->hmM:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, ", genCtrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gc;->hmN:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
