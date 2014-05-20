.class final Lcom/tencent/mm/ui/chatting/kk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bPE:Ljava/lang/String;

.field bPx:Ljava/lang/String;

.field bQs:Ljava/lang/String;

.field bQt:Ljava/lang/String;

.field bXF:Ljava/lang/String;

.field cWi:Ljava/lang/String;

.field cad:Lcom/tencent/mm/storage/ak;

.field dws:I

.field gJU:Z

.field gQK:Z

.field gQL:Ljava/lang/String;

.field gQM:Lcom/tencent/mm/j/b;

.field gQN:Z

.field gQO:I

.field gQP:I

.field position:I

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storage/ak;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1302
    invoke-direct {p0, p2}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Ljava/lang/String;)V

    .line 1303
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    .line 1304
    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;I)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1285
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v8, v7

    move-object v9, v7

    invoke-direct/range {v0 .. v9}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1289
    invoke-direct/range {p0 .. p5}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;I)V

    .line 1290
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IC)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1293
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IB)V

    .line 1294
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1281
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1277
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v12}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1262
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    .line 1263
    iput-boolean p2, p0, Lcom/tencent/mm/ui/chatting/kk;->gJU:Z

    .line 1264
    iput p3, p0, Lcom/tencent/mm/ui/chatting/kk;->position:I

    .line 1265
    iput-object p4, p0, Lcom/tencent/mm/ui/chatting/kk;->bPx:Ljava/lang/String;

    .line 1266
    iput p5, p0, Lcom/tencent/mm/ui/chatting/kk;->dws:I

    .line 1267
    iput-boolean p6, p0, Lcom/tencent/mm/ui/chatting/kk;->gQK:Z

    .line 1268
    iput-object p7, p0, Lcom/tencent/mm/ui/chatting/kk;->title:Ljava/lang/String;

    .line 1269
    iput-object p8, p0, Lcom/tencent/mm/ui/chatting/kk;->bQs:Ljava/lang/String;

    .line 1270
    iput-object p9, p0, Lcom/tencent/mm/ui/chatting/kk;->bQt:Ljava/lang/String;

    .line 1271
    iput-object p10, p0, Lcom/tencent/mm/ui/chatting/kk;->gQL:Ljava/lang/String;

    .line 1272
    iput-object p11, p0, Lcom/tencent/mm/ui/chatting/kk;->bPE:Ljava/lang/String;

    .line 1273
    iput-object p12, p0, Lcom/tencent/mm/ui/chatting/kk;->bXF:Ljava/lang/String;

    .line 1274
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1297
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IB)V

    .line 1298
    iput-object p5, p0, Lcom/tencent/mm/ui/chatting/kk;->cWi:Ljava/lang/String;

    .line 1299
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1307
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/kk;->bPx:Ljava/lang/String;

    .line 1308
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/kk;->dws:I

    .line 1309
    return-void
.end method

.method public static a(Lcom/tencent/mm/j/b;Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/ui/chatting/kk;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1343
    new-instance v0, Lcom/tencent/mm/ui/chatting/kk;

    invoke-direct {v0}, Lcom/tencent/mm/ui/chatting/kk;-><init>()V

    .line 1344
    iput-object p0, v0, Lcom/tencent/mm/ui/chatting/kk;->gQM:Lcom/tencent/mm/j/b;

    .line 1345
    iput-object p1, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    .line 1347
    return-object v0
.end method

.method public static a(Lcom/tencent/mm/storage/ak;ZI)Lcom/tencent/mm/ui/chatting/kk;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1351
    new-instance v0, Lcom/tencent/mm/ui/chatting/kk;

    invoke-direct {v0}, Lcom/tencent/mm/ui/chatting/kk;-><init>()V

    .line 1352
    iput-object p0, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    .line 1353
    iput-boolean p1, v0, Lcom/tencent/mm/ui/chatting/kk;->gJU:Z

    .line 1354
    iput p2, v0, Lcom/tencent/mm/ui/chatting/kk;->position:I

    .line 1355
    iput v1, v0, Lcom/tencent/mm/ui/chatting/kk;->dws:I

    .line 1356
    iput-boolean v1, v0, Lcom/tencent/mm/ui/chatting/kk;->gQN:Z

    .line 1357
    return-object v0
.end method

.method public static wG(Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/kk;
    .locals 2
    .parameter

    .prologue
    .line 1336
    new-instance v0, Lcom/tencent/mm/ui/chatting/kk;

    invoke-direct {v0}, Lcom/tencent/mm/ui/chatting/kk;-><init>()V

    .line 1337
    const/4 v1, 0x7

    iput v1, v0, Lcom/tencent/mm/ui/chatting/kk;->dws:I

    .line 1338
    iput-object p0, v0, Lcom/tencent/mm/ui/chatting/kk;->bXF:Ljava/lang/String;

    .line 1339
    return-object v0
.end method
