.class public Loicq/wlogin_sdk/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static hxy:I


# instance fields
.field protected hxA:I

.field protected hxB:I

.field protected hxC:I

.field protected hxD:I

.field hxE:B

.field protected hxF:Loicq/wlogin_sdk/a/k;

.field hxq:I

.field hxr:I

.field hxs:I

.field hxt:I

.field public hxu:I

.field protected hxv:I

.field protected hxw:[B

.field protected hxx:I

.field protected hxz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Loicq/wlogin_sdk/a/g;->hxy:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x1000

    iput v0, p0, Loicq/wlogin_sdk/a/g;->hxq:I

    .line 52
    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    .line 53
    const/16 v0, 0x1b

    iput v0, p0, Loicq/wlogin_sdk/a/g;->hxs:I

    .line 54
    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxt:I

    .line 55
    const/16 v0, 0xf

    iput v0, p0, Loicq/wlogin_sdk/a/g;->hxu:I

    .line 56
    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxv:I

    .line 57
    iget v0, p0, Loicq/wlogin_sdk/a/g;->hxq:I

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    .line 59
    const/16 v0, 0x1f41

    iput v0, p0, Loicq/wlogin_sdk/a/g;->hxx:I

    .line 61
    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxz:I

    .line 62
    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxA:I

    .line 63
    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxB:I

    .line 65
    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxC:I

    .line 66
    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxD:I

    .line 72
    return-void
.end method

.method private a(Loicq/wlogin_sdk/b/s;)I
    .locals 45
    .parameter

    .prologue
    .line 300
    const-wide v8, 0xffffffffL

    .line 302
    const-wide/16 v4, 0xe10

    const-wide/32 v6, 0x20f580

    .line 304
    new-instance v21, Loicq/wlogin_sdk/b/o;

    invoke-direct/range {v21 .. v21}, Loicq/wlogin_sdk/b/o;-><init>()V

    .line 305
    new-instance v23, Loicq/wlogin_sdk/b/p;

    invoke-direct/range {v23 .. v23}, Loicq/wlogin_sdk/b/p;-><init>()V

    .line 306
    new-instance v20, Loicq/wlogin_sdk/b/l;

    invoke-direct/range {v20 .. v20}, Loicq/wlogin_sdk/b/l;-><init>()V

    .line 307
    new-instance v22, Loicq/wlogin_sdk/b/q;

    invoke-direct/range {v22 .. v22}, Loicq/wlogin_sdk/b/q;-><init>()V

    .line 308
    new-instance v10, Loicq/wlogin_sdk/b/e;

    invoke-direct {v10}, Loicq/wlogin_sdk/b/e;-><init>()V

    .line 309
    new-instance v19, Loicq/wlogin_sdk/b/t;

    invoke-direct/range {v19 .. v19}, Loicq/wlogin_sdk/b/t;-><init>()V

    .line 311
    new-instance v11, Loicq/wlogin_sdk/b/d;

    invoke-direct {v11}, Loicq/wlogin_sdk/b/d;-><init>()V

    .line 312
    new-instance v12, Loicq/wlogin_sdk/b/m;

    invoke-direct {v12}, Loicq/wlogin_sdk/b/m;-><init>()V

    .line 313
    new-instance v13, Loicq/wlogin_sdk/b/u;

    invoke-direct {v13}, Loicq/wlogin_sdk/b/u;-><init>()V

    .line 314
    new-instance v35, Loicq/wlogin_sdk/b/v;

    invoke-direct/range {v35 .. v35}, Loicq/wlogin_sdk/b/v;-><init>()V

    .line 315
    new-instance v14, Loicq/wlogin_sdk/b/x;

    invoke-direct {v14}, Loicq/wlogin_sdk/b/x;-><init>()V

    .line 316
    new-instance v15, Loicq/wlogin_sdk/b/y;

    invoke-direct {v15}, Loicq/wlogin_sdk/b/y;-><init>()V

    .line 317
    new-instance v16, Loicq/wlogin_sdk/b/j;

    invoke-direct/range {v16 .. v16}, Loicq/wlogin_sdk/b/j;-><init>()V

    .line 318
    new-instance v17, Loicq/wlogin_sdk/b/h;

    invoke-direct/range {v17 .. v17}, Loicq/wlogin_sdk/b/h;-><init>()V

    .line 319
    new-instance v18, Loicq/wlogin_sdk/b/n;

    invoke-direct/range {v18 .. v18}, Loicq/wlogin_sdk/b/n;-><init>()V

    .line 320
    new-instance v32, Loicq/wlogin_sdk/b/aa;

    invoke-direct/range {v32 .. v32}, Loicq/wlogin_sdk/b/aa;-><init>()V

    .line 321
    new-instance v33, Loicq/wlogin_sdk/b/w;

    invoke-direct/range {v33 .. v33}, Loicq/wlogin_sdk/b/w;-><init>()V

    .line 322
    new-instance v36, Loicq/wlogin_sdk/b/ag;

    invoke-direct/range {v36 .. v36}, Loicq/wlogin_sdk/b/ag;-><init>()V

    .line 323
    new-instance v34, Loicq/wlogin_sdk/b/ac;

    invoke-direct/range {v34 .. v34}, Loicq/wlogin_sdk/b/ac;-><init>()V

    .line 324
    new-instance v37, Loicq/wlogin_sdk/b/ai;

    invoke-direct/range {v37 .. v37}, Loicq/wlogin_sdk/b/ai;-><init>()V

    .line 325
    new-instance v38, Loicq/wlogin_sdk/b/aq;

    invoke-direct/range {v38 .. v38}, Loicq/wlogin_sdk/b/aq;-><init>()V

    .line 326
    new-instance v39, Loicq/wlogin_sdk/b/an;

    invoke-direct/range {v39 .. v39}, Loicq/wlogin_sdk/b/an;-><init>()V

    .line 328
    const/16 v26, 0x0

    .line 329
    const/16 v25, 0x0

    .line 330
    const/16 v27, 0x0

    .line 331
    const/16 v28, 0x0

    .line 332
    const/16 v29, 0x0

    .line 333
    const/16 v24, 0x0

    .line 334
    const/16 v30, 0x0

    .line 335
    const/16 v31, 0x0

    .line 337
    new-instance v40, Loicq/wlogin_sdk/b/ad;

    invoke-direct/range {v40 .. v40}, Loicq/wlogin_sdk/b/ad;-><init>()V

    .line 339
    new-instance v41, Loicq/wlogin_sdk/b/ae;

    invoke-direct/range {v41 .. v41}, Loicq/wlogin_sdk/b/ae;-><init>()V

    .line 340
    new-instance v42, Loicq/wlogin_sdk/b/af;

    invoke-direct/range {v42 .. v42}, Loicq/wlogin_sdk/b/af;-><init>()V

    .line 343
    invoke-virtual/range {p1 .. p1}, Loicq/wlogin_sdk/b/s;->aQw()[B

    move-result-object v43

    .line 344
    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v44, v0

    .line 347
    const/4 v3, 0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/o;->g([BII)I

    .line 348
    const/4 v3, 0x2

    move-object/from16 v0, v23

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/p;->g([BII)I

    .line 349
    const/4 v3, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/l;->g([BII)I

    .line 350
    const/4 v3, 0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/q;->g([BII)I

    .line 351
    const/4 v3, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/t;->g([BII)I

    move-result v3

    .line 352
    if-gez v3, :cond_0

    .line 491
    :goto_0
    return v3

    .line 356
    :cond_0
    const/4 v3, 0x2

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v10, v0, v3, v1}, Loicq/wlogin_sdk/b/e;->g([BII)I

    move-result v3

    .line 357
    if-ltz v3, :cond_1

    .line 358
    invoke-virtual {v10}, Loicq/wlogin_sdk/b/e;->aQw()[B

    move-result-object v24

    .line 361
    :cond_1
    const/4 v3, 0x2

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/j;->g([BII)I

    move-result v3

    .line 362
    if-ltz v3, :cond_2

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v3, v3, Loicq/wlogin_sdk/a/k;->hxo:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Loicq/wlogin_sdk/b/j;->aQw()[B

    move-result-object v10

    invoke-static {v3, v10}, Loicq/wlogin_sdk/c/f;->a(Landroid/content/Context;[B)V

    .line 367
    :cond_2
    const/4 v3, 0x2

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v11, v0, v3, v1}, Loicq/wlogin_sdk/b/d;->g([BII)I

    move-result v3

    .line 368
    if-ltz v3, :cond_3

    .line 369
    invoke-virtual {v11}, Loicq/wlogin_sdk/b/d;->aQw()[B

    move-result-object v26

    .line 372
    :cond_3
    const/4 v3, 0x2

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v12, v0, v3, v1}, Loicq/wlogin_sdk/b/m;->g([BII)I

    move-result v3

    .line 373
    if-ltz v3, :cond_4

    .line 374
    invoke-virtual {v12}, Loicq/wlogin_sdk/b/m;->aQw()[B

    move-result-object v25

    .line 378
    :cond_4
    const/4 v3, 0x2

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v13, v0, v3, v1}, Loicq/wlogin_sdk/b/u;->g([BII)I

    move-result v3

    .line 379
    if-ltz v3, :cond_5

    .line 380
    invoke-virtual {v13}, Loicq/wlogin_sdk/b/u;->aQw()[B

    move-result-object v27

    .line 383
    :cond_5
    const/4 v3, 0x2

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v14, v0, v3, v1}, Loicq/wlogin_sdk/b/x;->g([BII)I

    move-result v3

    .line 384
    if-ltz v3, :cond_6

    .line 385
    invoke-virtual {v14}, Loicq/wlogin_sdk/b/x;->aQw()[B

    move-result-object v28

    .line 389
    :cond_6
    const/4 v3, 0x2

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v15, v0, v3, v1}, Loicq/wlogin_sdk/b/y;->g([BII)I

    move-result v3

    .line 390
    if-ltz v3, :cond_7

    .line 391
    invoke-virtual {v15}, Loicq/wlogin_sdk/b/y;->aQw()[B

    move-result-object v29

    .line 395
    :cond_7
    const/4 v3, 0x2

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/aa;->g([BII)I

    move-result v3

    .line 396
    if-ltz v3, :cond_8

    .line 397
    invoke-virtual/range {v32 .. v32}, Loicq/wlogin_sdk/b/aa;->aQL()[B

    move-result-object v30

    .line 398
    invoke-virtual/range {v32 .. v32}, Loicq/wlogin_sdk/b/aa;->aQM()[B

    move-result-object v31

    .line 401
    :cond_8
    const/16 v3, 0x8

    const/4 v10, 0x0

    filled-new-array {v3, v10}, [I

    move-result-object v3

    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [[B

    .line 403
    const/4 v3, 0x2

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/ad;->g([BII)I

    move-result v3

    .line 404
    if-ltz v3, :cond_9

    .line 405
    invoke-virtual/range {v40 .. v40}, Loicq/wlogin_sdk/b/ad;->aQw()[B

    move-result-object v3

    .line 406
    const/4 v10, 0x0

    aput-object v3, v32, v10

    .line 408
    :cond_9
    const/4 v3, 0x2

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/ae;->g([BII)I

    move-result v3

    .line 409
    if-ltz v3, :cond_a

    .line 410
    invoke-virtual/range {v41 .. v41}, Loicq/wlogin_sdk/b/ae;->aQw()[B

    move-result-object v3

    .line 411
    const/4 v10, 0x1

    aput-object v3, v32, v10

    .line 415
    :cond_a
    const/4 v3, 0x2

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/af;->g([BII)I

    move-result v3

    .line 416
    if-ltz v3, :cond_b

    .line 417
    const/4 v3, 0x2

    invoke-virtual/range {v42 .. v42}, Loicq/wlogin_sdk/b/af;->aQw()[B

    move-result-object v10

    aput-object v10, v32, v3

    .line 421
    :cond_b
    const/4 v3, 0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/n;->g([BII)I

    move-result v3

    .line 423
    const/4 v10, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v10, v2}, Loicq/wlogin_sdk/b/h;->g([BII)I

    move-result v10

    .line 424
    if-ltz v10, :cond_c

    if-ltz v3, :cond_c

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/b/n;->aQw()[B

    move-result-object v10

    iput-object v10, v3, Loicq/wlogin_sdk/a/k;->hxH:[B

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    invoke-virtual/range {v17 .. v17}, Loicq/wlogin_sdk/b/h;->aQw()[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Loicq/wlogin_sdk/a/g;->cA([B)[B

    move-result-object v10

    iput-object v10, v3, Loicq/wlogin_sdk/a/k;->hyf:[B

    .line 429
    const/4 v10, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v3, v3, Loicq/wlogin_sdk/a/k;->hyf:[B

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aput-object v3, v32, v10

    .line 434
    :cond_c
    const/4 v3, 0x2

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/ac;->g([BII)I

    move-result v3

    .line 435
    if-ltz v3, :cond_d

    .line 436
    const/4 v3, 0x4

    invoke-virtual/range {v34 .. v34}, Loicq/wlogin_sdk/b/ac;->aQN()[B

    move-result-object v10

    aput-object v10, v32, v3

    .line 440
    :cond_d
    const/4 v3, 0x2

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/ai;->g([BII)I

    move-result v3

    .line 441
    if-ltz v3, :cond_e

    .line 442
    const/4 v3, 0x5

    invoke-virtual/range {v37 .. v37}, Loicq/wlogin_sdk/b/ai;->aQw()[B

    move-result-object v10

    aput-object v10, v32, v3

    .line 445
    :cond_e
    const/4 v3, 0x2

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/aq;->g([BII)I

    move-result v3

    .line 446
    if-ltz v3, :cond_f

    .line 447
    const/4 v3, 0x6

    invoke-virtual/range {v38 .. v38}, Loicq/wlogin_sdk/b/aq;->aQw()[B

    move-result-object v10

    aput-object v10, v32, v3

    .line 450
    :cond_f
    const/4 v3, 0x2

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/an;->g([BII)I

    move-result v3

    .line 451
    if-ltz v3, :cond_10

    .line 452
    const/4 v3, 0x7

    invoke-virtual/range {v39 .. v39}, Loicq/wlogin_sdk/b/an;->aQw()[B

    move-result-object v10

    aput-object v10, v32, v3

    .line 456
    :cond_10
    const/4 v3, 0x2

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/w;->g([BII)I

    move-result v3

    .line 457
    if-ltz v3, :cond_15

    .line 458
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-wide v3, v3, Loicq/wlogin_sdk/a/k;->hxO:J

    const-wide/16 v8, -0x1

    cmp-long v3, v3, v8

    if-nez v3, :cond_11

    .line 459
    invoke-virtual/range {v33 .. v33}, Loicq/wlogin_sdk/b/w;->aQJ()I

    move-result v3

    int-to-long v3, v3

    .line 463
    :goto_1
    invoke-virtual/range {v33 .. v33}, Loicq/wlogin_sdk/b/w;->aQK()I

    move-result v5

    int-to-long v8, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    move-wide/from16 v33, v3

    .line 465
    :goto_2
    const/4 v3, 0x2

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/ag;->g([BII)I

    move-result v3

    .line 466
    if-ltz v3, :cond_14

    invoke-virtual/range {v36 .. v36}, Loicq/wlogin_sdk/b/ag;->aQO()I

    move-result v3

    if-eqz v3, :cond_14

    .line 467
    invoke-virtual/range {v36 .. v36}, Loicq/wlogin_sdk/b/ag;->aQO()I

    move-result v3

    int-to-long v3, v3

    .line 469
    :goto_3
    cmp-long v5, v3, v33

    if-gez v5, :cond_13

    move-wide/from16 v14, v33

    .line 473
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-wide v4, v4, Loicq/wlogin_sdk/a/k;->hwZ:J

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-wide v6, v6, Loicq/wlogin_sdk/a/k;->hxM:J

    .line 474
    invoke-static {}, Loicq/wlogin_sdk/a/k;->aQu()J

    move-result-wide v10

    invoke-static {}, Loicq/wlogin_sdk/a/k;->aQu()J

    move-result-wide v12

    .line 475
    add-long v12, v12, v33

    invoke-static {}, Loicq/wlogin_sdk/a/k;->aQu()J

    move-result-wide v16

    .line 476
    add-long v14, v14, v16

    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/b/t;->aQC()[B

    move-result-object v16

    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/b/t;->aQD()[B

    move-result-object v17

    .line 477
    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/b/t;->aQE()[B

    move-result-object v18

    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/b/t;->aQF()[B

    move-result-object v19

    invoke-virtual/range {v20 .. v20}, Loicq/wlogin_sdk/b/l;->aQw()[B

    move-result-object v20

    .line 478
    invoke-virtual/range {v21 .. v21}, Loicq/wlogin_sdk/b/o;->aQw()[B

    move-result-object v21

    invoke-virtual/range {v22 .. v22}, Loicq/wlogin_sdk/b/q;->aQw()[B

    move-result-object v22

    invoke-virtual/range {v23 .. v23}, Loicq/wlogin_sdk/b/p;->aQw()[B

    move-result-object v23

    .line 473
    invoke-virtual/range {v3 .. v32}, Loicq/wlogin_sdk/a/k;->a(JJJJJJ[B[B[B[B[B[B[B[B[B[B[B[B[B[B[B[B[[B)I

    .line 483
    const/4 v3, 0x2

    .line 484
    :goto_5
    move-object/from16 v0, v35

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v3, v2}, Loicq/wlogin_sdk/b/v;->g([BII)I

    move-result v14

    if-gez v14, :cond_12

    .line 491
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 461
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-wide v3, v3, Loicq/wlogin_sdk/a/k;->hxO:J

    goto/16 :goto_1

    .line 485
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-wide v4, v4, Loicq/wlogin_sdk/a/k;->hwZ:J

    invoke-virtual/range {v35 .. v35}, Loicq/wlogin_sdk/b/v;->aQG()J

    move-result-wide v6

    .line 486
    invoke-static {}, Loicq/wlogin_sdk/a/k;->aQu()J

    move-result-wide v8

    .line 487
    invoke-static {}, Loicq/wlogin_sdk/a/k;->aQu()J

    move-result-wide v10

    add-long v10, v10, v33

    .line 488
    invoke-virtual/range {v35 .. v35}, Loicq/wlogin_sdk/b/v;->aQI()[B

    move-result-object v12

    invoke-virtual/range {v35 .. v35}, Loicq/wlogin_sdk/b/v;->aQH()[B

    move-result-object v13

    .line 485
    invoke-virtual/range {v3 .. v13}, Loicq/wlogin_sdk/a/k;->a(JJJJ[B[B)I

    move v3, v14

    goto :goto_5

    :cond_13
    move-wide v14, v3

    goto/16 :goto_4

    :cond_14
    move-wide v3, v6

    goto/16 :goto_3

    :cond_15
    move-wide/from16 v33, v4

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(IIJIIII[B)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    .line 134
    array-length v0, p9

    .line 133
    sget v1, Loicq/wlogin_sdk/a/g;->hxy:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Loicq/wlogin_sdk/a/g;->hxy:I

    const/4 v2, 0x0

    iput v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget-object v2, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v3, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Loicq/wlogin_sdk/c/f;->h([BII)V

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget-object v2, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v3, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget v4, p0, Loicq/wlogin_sdk/a/g;->hxs:I

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    invoke-static {v2, v3, v4}, Loicq/wlogin_sdk/c/f;->i([BII)V

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget-object v2, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v3, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    invoke-static {v2, v3, p1}, Loicq/wlogin_sdk/c/f;->i([BII)V

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget-object v2, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v3, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    invoke-static {v2, v3, p2}, Loicq/wlogin_sdk/c/f;->i([BII)V

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget-object v2, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v3, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    invoke-static {v2, v3, v1}, Loicq/wlogin_sdk/c/f;->i([BII)V

    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget-object v1, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    long-to-int v3, p3

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/c/f;->j([BII)V

    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget-object v1, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/c/f;->h([BII)V

    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget-object v1, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/c/f;->h([BII)V

    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget-object v1, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    invoke-static {v1, v2, p5}, Loicq/wlogin_sdk/c/f;->h([BII)V

    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget-object v1, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    invoke-static {v1, v2, p6}, Loicq/wlogin_sdk/c/f;->j([BII)V

    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget-object v1, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    invoke-static {v1, v2, p7}, Loicq/wlogin_sdk/c/f;->j([BII)V

    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget-object v1, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    invoke-static {v1, v2, p8}, Loicq/wlogin_sdk/c/f;->j([BII)V

    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxq:I

    if-le v1, v2, :cond_0

    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit16 v1, v1, 0x80

    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxq:I

    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxq:I

    new-array v1, v1, [B

    iget-object v2, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v3, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    invoke-static {p9, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    add-int/2addr v0, v1

    iput v0, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget-object v0, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/c/f;->h([BII)V

    iget v0, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    .line 135
    return-void
.end method

.method public final aQs()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 167
    iget v0, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    new-array v0, v0, [B

    .line 168
    iget-object v1, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    return-object v0
.end method

.method public final aQt()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v0, v0, Loicq/wlogin_sdk/a/k;->hye:Loicq/wlogin_sdk/c/b;

    invoke-virtual {v0}, Loicq/wlogin_sdk/c/b;->aQS()V

    .line 250
    return-void
.end method

.method final c([BII)[B
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 195
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 196
    invoke-static {v0, v4, p2}, Loicq/wlogin_sdk/c/f;->i([BII)V

    .line 197
    const/4 v1, 0x2

    invoke-static {v0, v1, p3}, Loicq/wlogin_sdk/c/f;->i([BII)V

    .line 198
    const/4 v1, 0x4

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    array-length v1, v0

    iget-object v2, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v2, v2, Loicq/wlogin_sdk/a/k;->hxJ:[B

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/c/e;->a([BI[B)[B

    move-result-object v0

    .line 202
    array-length v1, v0

    iget-object v2, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v2, v2, Loicq/wlogin_sdk/a/k;->hxJ:[B

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 203
    iget-object v2, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v2, v2, Loicq/wlogin_sdk/a/k;->hxJ:[B

    iget-object v3, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v3, v3, Loicq/wlogin_sdk/a/k;->hxJ:[B

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    iget-object v2, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v2, v2, Loicq/wlogin_sdk/a/k;->hxJ:[B

    array-length v2, v2

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    return-object v1
.end method

.method public final cA([B)[B
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 271
    if-nez p1, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 279
    :goto_0
    return-object v0

    .line 275
    :cond_0
    array-length v0, p1

    iget-object v1, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v1, v1, Loicq/wlogin_sdk/a/k;->hxH:[B

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 276
    array-length v1, p1

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    iget-object v1, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v1, v1, Loicq/wlogin_sdk/a/k;->hxH:[B

    array-length v2, p1

    iget-object v3, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v3, v3, Loicq/wlogin_sdk/a/k;->hxH:[B

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final cB([B)[B
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 283
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v6, :cond_1

    .line 284
    :cond_0
    const/4 v0, 0x0

    .line 295
    :goto_0
    return-object v0

    .line 287
    :cond_1
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 288
    array-length v1, v0

    add-int/lit8 v2, v1, -0x10

    .line 289
    new-array v1, v2, [B

    .line 291
    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    iget-object v3, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    new-array v4, v6, [B

    iput-object v4, v3, Loicq/wlogin_sdk/a/k;->hxH:[B

    .line 293
    iget-object v3, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v3, v3, Loicq/wlogin_sdk/a/k;->hxH:[B

    invoke-static {v0, v2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 295
    goto :goto_0
.end method

.method public final d([BII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    new-instance v0, Loicq/wlogin_sdk/b/al;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/al;-><init>()V

    .line 233
    invoke-virtual {v0, p1, p2, p3}, Loicq/wlogin_sdk/b/al;->g([BII)I

    move-result v1

    .line 235
    if-ltz v1, :cond_0

    .line 236
    iget-object v1, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v1, v1, Loicq/wlogin_sdk/a/k;->hye:Loicq/wlogin_sdk/c/b;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/al;->aQP()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Loicq/wlogin_sdk/c/b;->setTitle(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v1, v1, Loicq/wlogin_sdk/a/k;->hye:Loicq/wlogin_sdk/c/b;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/al;->aQQ()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Loicq/wlogin_sdk/c/b;->setMessage(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v1, v1, Loicq/wlogin_sdk/a/k;->hye:Loicq/wlogin_sdk/c/b;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/al;->aQR()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Loicq/wlogin_sdk/c/b;->ye(Ljava/lang/String;)V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v0, v0, Loicq/wlogin_sdk/a/k;->hye:Loicq/wlogin_sdk/c/b;

    invoke-virtual {v0}, Loicq/wlogin_sdk/c/b;->aQS()V

    goto :goto_0
.end method

.method public e([BII)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v8, 0x810

    .line 502
    new-instance v4, Loicq/wlogin_sdk/b/f;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/f;-><init>()V

    .line 503
    new-instance v5, Loicq/wlogin_sdk/b/g;

    invoke-direct {v5}, Loicq/wlogin_sdk/b/g;-><init>()V

    .line 504
    new-instance v6, Loicq/wlogin_sdk/b/s;

    invoke-direct {v6}, Loicq/wlogin_sdk/b/s;-><init>()V

    .line 506
    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxC:I

    if-ne v2, v8, :cond_0

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxD:I

    const/16 v7, 0x9

    if-ne v2, v7, :cond_0

    move v2, v1

    .line 519
    :goto_0
    const/4 v0, 0x5

    if-ge p3, v0, :cond_3

    .line 520
    const/16 v0, -0x3f1

    .line 582
    :goto_1
    return v0

    .line 511
    :cond_0
    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxC:I

    if-ne v2, v8, :cond_1

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxD:I

    const/16 v7, 0xa

    if-ne v2, v7, :cond_1

    move v2, v3

    .line 513
    goto :goto_0

    :cond_1
    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxC:I

    if-ne v2, v8, :cond_2

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxD:I

    if-ne v2, v0, :cond_2

    move v2, v0

    .line 515
    goto :goto_0

    .line 516
    :cond_2
    const/16 v0, -0x3f4

    goto :goto_1

    .line 523
    :cond_3
    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, p1, v0}, Loicq/wlogin_sdk/a/g;->p([BI)I

    move-result v0

    .line 524
    invoke-virtual {p0}, Loicq/wlogin_sdk/a/g;->aQt()V

    .line 525
    add-int/lit8 v7, p2, 0x5

    .line 527
    packed-switch v0, :pswitch_data_0

    .line 577
    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    sub-int/2addr v1, v7

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v7, v1}, Loicq/wlogin_sdk/a/g;->d([BII)V

    goto :goto_1

    .line 530
    :pswitch_0
    if-ne v2, v3, :cond_5

    .line 531
    iget-object v0, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v0, v0, Loicq/wlogin_sdk/a/k;->hxI:[B

    if-nez v0, :cond_4

    .line 532
    const/16 v0, -0x3ee

    goto :goto_1

    .line 534
    :cond_4
    iget v0, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    sub-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v2, v2, Loicq/wlogin_sdk/a/k;->hxI:[B

    invoke-virtual {v6, p1, v7, v0, v2}, Loicq/wlogin_sdk/b/s;->a([BII[B)I

    move-result v0

    .line 541
    :goto_2
    if-gez v0, :cond_6

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "119 can not decrypt, ret="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    goto :goto_1

    .line 536
    :cond_5
    iget v0, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    sub-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v2, v2, Loicq/wlogin_sdk/a/k;->hxH:[B

    invoke-virtual {v6, p1, v7, v0, v2}, Loicq/wlogin_sdk/b/s;->a([BII[B)I

    move-result v0

    goto :goto_2

    .line 546
    :cond_6
    invoke-direct {p0, v6}, Loicq/wlogin_sdk/a/g;->a(Loicq/wlogin_sdk/b/s;)I

    move-result v0

    .line 547
    if-gez v0, :cond_7

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse 119 failed, ret="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    move v0, v1

    .line 553
    goto/16 :goto_1

    .line 557
    :pswitch_1
    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    sub-int/2addr v1, v7

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v7, v1}, Loicq/wlogin_sdk/a/g;->d([BII)V

    goto/16 :goto_1

    .line 563
    :pswitch_2
    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    sub-int/2addr v1, v7

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, p1, v7, v1}, Loicq/wlogin_sdk/b/f;->g([BII)I

    move-result v1

    .line 564
    if-ltz v1, :cond_8

    .line 565
    iget-object v1, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iput-object v4, v1, Loicq/wlogin_sdk/a/k;->hxK:Loicq/wlogin_sdk/b/f;

    .line 568
    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    sub-int/2addr v1, v7

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, p1, v7, v1}, Loicq/wlogin_sdk/b/g;->g([BII)I

    move-result v1

    .line 569
    if-ltz v1, :cond_8

    .line 570
    iget-object v1, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iput-object v5, v1, Loicq/wlogin_sdk/a/k;->hxL:Loicq/wlogin_sdk/b/g;

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_1

    .line 527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final o([BI)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v0, -0x3ea

    const/4 v1, 0x0

    .line 138
    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxu:I

    add-int/lit8 v2, v2, 0x2

    if-gt p2, v2, :cond_1

    .line 141
    const/16 v0, -0x3f1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxu:I

    sub-int v2, p2, v2

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Loicq/wlogin_sdk/a/g;->hxv:I

    .line 144
    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxq:I

    if-le p2, v2, :cond_2

    add-int/lit16 v2, p2, 0x80

    iput v2, p0, Loicq/wlogin_sdk/a/g;->hxq:I

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxq:I

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    :cond_2
    iput p2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget-object v2, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    invoke-static {p1, v1, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iget-object v2, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v3, p0, Loicq/wlogin_sdk/a/g;->hxu:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Loicq/wlogin_sdk/a/g;->hxv:I

    .line 147
    iget-object v5, p0, Loicq/wlogin_sdk/a/g;->hxF:Loicq/wlogin_sdk/a/k;

    iget-object v5, v5, Loicq/wlogin_sdk/a/k;->hxJ:[B

    .line 146
    invoke-static {v2, v3, v4, v5}, Loicq/wlogin_sdk/c/e;->decrypt([BII[B)[B

    move-result-object v2

    if-nez v2, :cond_3

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    .line 151
    iget-object v0, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v1, p0, Loicq/wlogin_sdk/a/g;->hxu:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/a/g;->hxv:I

    invoke-virtual {p0, v0, v1, v2}, Loicq/wlogin_sdk/a/g;->e([BII)I

    move-result v0

    goto :goto_0

    .line 146
    :cond_3
    array-length v4, v2

    iput v4, p0, Loicq/wlogin_sdk/a/g;->hxv:I

    array-length v4, v2

    iget v5, p0, Loicq/wlogin_sdk/a/g;->hxu:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    iget v5, p0, Loicq/wlogin_sdk/a/g;->hxq:I

    if-le v4, v5, :cond_4

    array-length v4, v2

    iget v5, p0, Loicq/wlogin_sdk/a/g;->hxu:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Loicq/wlogin_sdk/a/g;->hxq:I

    iget v4, p0, Loicq/wlogin_sdk/a/g;->hxq:I

    new-array v4, v4, [B

    iget-object v5, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    iget v6, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    invoke-static {v5, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    :cond_4
    iput v1, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget-object v4, p0, Loicq/wlogin_sdk/a/g;->hxw:[B

    array-length v5, v2

    invoke-static {v2, v1, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    iget v4, p0, Loicq/wlogin_sdk/a/g;->hxu:I

    add-int/lit8 v4, v4, 0x2

    array-length v2, v2

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    iput v2, p0, Loicq/wlogin_sdk/a/g;->hxr:I

    goto :goto_1
.end method

.method public final p([BI)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 223
    aget-byte v0, p1, p2

    iput-byte v0, p0, Loicq/wlogin_sdk/a/g;->hxE:B

    .line 224
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
